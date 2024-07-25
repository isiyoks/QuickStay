package org.sukriyesahin.quickstay.service.impl;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.sukriyesahin.quickstay.repository.RoleRepository;
import org.sukriyesahin.quickstay.repository.UserRepository;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class UserServiceImplTest {

    @Mock
    private UserRepository userRepository;

    @Mock
    private PasswordEncoder passwordEncoder;

    @Mock
    private JavaMailSender mailSender;

    @Mock
    private RoleRepository roleRepository;

    @InjectMocks
    private UserServiceImpl userService;

    @Test
    void findByUsername() {
        when(userRepository.findByUsername(any())).thenReturn(Optional.empty());

        Optional<org.sukriyesahin.quickstay.model.user.User> user = userService.findByUsername("testuser");

        assertThat(user).isEmpty();
    }
}