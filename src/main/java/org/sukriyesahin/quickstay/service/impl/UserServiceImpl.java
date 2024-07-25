package org.sukriyesahin.quickstay.service.impl;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StreamUtils;
import org.sukriyesahin.quickstay.dto.RegistrationDTO;
import org.sukriyesahin.quickstay.exception.EmailExistsException;
import org.sukriyesahin.quickstay.exception.UsernameExistsException;
import org.sukriyesahin.quickstay.mapper.UserMapper;
import org.sukriyesahin.quickstay.model.user.Role;
import org.sukriyesahin.quickstay.model.user.User;
import org.sukriyesahin.quickstay.repository.RoleRepository;
import org.sukriyesahin.quickstay.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.sukriyesahin.quickstay.service.UserService;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Optional;
import java.util.Set;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final JavaMailSender mailSender;
    private final RoleRepository roleRepository;
    private final UserMapper userMapper;

    @Autowired
    public UserServiceImpl(UserRepository userRepository, PasswordEncoder passwordEncoder,
                           JavaMailSender mailSender, RoleRepository roleRepository, UserMapper userMapper) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.mailSender = mailSender;
        this.roleRepository = roleRepository;
        this.userMapper = userMapper;
    }

    @Override
    public User register(RegistrationDTO registrationDTO) {
        if (userRepository.findByUsername(registrationDTO.getUsername()).isPresent()) {
            throw new UsernameExistsException("Username already exists");
        }
        if (userRepository.findByEmail(registrationDTO.getEmail()).isPresent()) {
            throw new EmailExistsException("Email already registered");
        }

        // Attempt to find the "APP_USER" role in the database
        Role defaultRole = roleRepository.findByName("APP_USER")
                .orElseGet(() -> {
                    // If not found, create and save the new role
                    Role newRole = new Role(null, "APP_USER");
                    roleRepository.save(newRole);
                    return newRole;
                });

        Set<Role> roles = new HashSet<>();
        roles.add(defaultRole);

        User user = userMapper.registrationDtoToUser(registrationDTO);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setRoles(roles);
        user = userRepository.save(user);

        // Send activation email
        sendActivationEmail(user.getEmail(), user.getActivationToken());

        return user;
    }


    private void sendActivationEmail(String to, String activationToken) {
        try {
            String htmlContent = loadAndFillTemplate(activationToken);
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true);
            helper.setTo(to);
            helper.setSubject("Activate Your Account");
            helper.setText(htmlContent, true); // Set to true to send HTML

            mailSender.send(message);
        } catch (MessagingException | IOException e) {
            throw new RuntimeException("Failed to send email", e);
        }
    }

    public String loadAndFillTemplate(String token) throws IOException {
        ClassPathResource htmlTemplateResource = new ClassPathResource("templates/activate-email.html");
        String htmlTemplate = StreamUtils.copyToString(htmlTemplateResource.getInputStream(), StandardCharsets.UTF_8);

        // Replace placeholders
        htmlTemplate = htmlTemplate.replace("{{token}}", token);

        return htmlTemplate;
    }

    @Override
    public Optional<User> findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public boolean activateUser(String activationToken) {
        Optional<User> userOptional = userRepository.findByActivationToken(activationToken);

        if (userOptional.isPresent()) {
            User user = userOptional.get();
            // Check if the token is still within its valid time frame
            if (user.getActivationTokenExpiry().isAfter(LocalDate.now())) {
                user.setEnabled(true);
                userRepository.save(user);
                return true;
            }
        }

        return false; // Token is invalid or expired
    }

    @Override
    public User createCorporateUser(User user, String roleName) {
        Role role = roleRepository.findByName(roleName).orElseThrow(() -> new RuntimeException("Role not found: " + roleName));
        Set<Role> roles = new HashSet<>();
        roles.add(role);
        user.setRoles(roles);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        return userRepository.save(user);
    }

    @Override
    public boolean resendActivationEmail(String email, User user) {
        if (user != null && !user.isEnabled()) {
            String newToken = UUID.randomUUID().toString();
            user.setActivationToken(newToken);
            user.setActivationTokenExpiry(LocalDate.now().plusDays(1)); // Assuming you have a method to set the token expiry
            userRepository.save(user);

            sendActivationEmail(email, newToken);

            return true;
        }
        return false;
    }

    @Override
    @Transactional
    public boolean activateUserByToken(String token) {
        // Attempt to find the user with the given activation token
        User user = userRepository.findByActivationToken(token)
                .orElse(null);

        if (user != null && !user.isEnabled()) {
            // User found and not activated yet, activate them
            user.setEnabled(true);
            userRepository.save(user); // Save the activated user
            return true;
        }

        // User not found, or already activated
        return false;
    }

    @Override
    public Optional<User> findByActivationToken(String token) {
        return userRepository.findByActivationToken(token);
    }

}
