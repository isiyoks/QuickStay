package org.sukriyesahin.quickstay.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.sukriyesahin.quickstay.exception.EmailExistsException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import jakarta.validation.Valid;
import org.sukriyesahin.quickstay.dto.LoginDTO;
import org.sukriyesahin.quickstay.dto.RegistrationDTO;
import org.springframework.security.core.userdetails.UserDetails;
import org.sukriyesahin.quickstay.exception.UsernameExistsException;
import org.sukriyesahin.quickstay.model.user.User;
import org.sukriyesahin.quickstay.service.UserService;

import java.util.Objects;

/**
 * Controller for handling user-related requests.
 * Provides endpoints for user registration, activation, login, and resending activation emails.
 */
@Controller
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private AuthenticationManager authenticationManager;

    /**
     * Displays the registration form.
     *
     * @param model the model to pass attributes to the view
     * @return the name of the view to render
     */
    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        if (!model.containsAttribute("registrationDTO")) {
            model.addAttribute("registrationDTO", new RegistrationDTO());
        }
        return "register";
    }

    /**
     * Handles the registration form submission.
     *
     * @param registrationDTO the registration data transfer object
     * @param result the binding result for validation
     * @param redirectAttributes attributes for flash messages
     * @param request the HTTP request
     * @return the name of the view to redirect to
     */
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("registrationDTO") RegistrationDTO registrationDTO,
                           BindingResult result,
                           RedirectAttributes redirectAttributes,
                           HttpServletRequest request) {
        logger.info("Registration request received for username: {}", registrationDTO.getUsername());
        if (result.hasErrors()) {
            if (result.getGlobalErrors().stream().anyMatch(err -> Objects.equals(err.getCode(), "PasswordMatches"))) {
                result.rejectValue("confirmPassword", "PasswordMatches", "Passwords must match");
            }
            redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.registrationDTO", result);
            redirectAttributes.addFlashAttribute("registrationDTO", registrationDTO);
            return "redirect:/register";
        }

        try {
            User registeredUser = userService.register(registrationDTO);
            request.getSession().setAttribute("loggedUser", registeredUser);
            logger.info("User registered successfully: {}", registeredUser.getUsername());
            return "redirect:/inactive";
        } catch (UsernameExistsException ex) {
            logger.warn("Username already exists: {}", registrationDTO.getUsername());
            result.rejectValue("username", "error.username", ex.getMessage());
        } catch (EmailExistsException ex) {
            logger.warn("Email already exists: {}", registrationDTO.getEmail());
            result.rejectValue("email", "error.email", ex.getMessage());
        } catch (Exception e) {
            logger.error("Error during registration", e);
            redirectAttributes.addFlashAttribute("error", "An error occurred during registration. Please try again.");
        }
        redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.registrationDTO", result);
        redirectAttributes.addFlashAttribute("registrationDTO", registrationDTO);
        return "redirect:/register";
    }

    /**
     * Displays the activation page.
     *
     * @param session the HTTP session
     * @param model the model to pass attributes to the view
     * @return the name of the view to render
     */
    @GetMapping("/inactive")
    public String showActivationPage(HttpSession session, Model model) {
        UserDetails loggedUser = (UserDetails) session.getAttribute("loggedUser");
        if (loggedUser == null) {
            return "redirect:/login";
        }
        model.addAttribute("registeredUser", loggedUser);
        return "inactive";
    }

    /**
     * Activates the user account based on the provided token.
     *
     * @param token the activation token
     * @param redirectAttributes attributes for flash messages
     * @return the name of the view to redirect to
     */
    @GetMapping("/activate")
    public String activateUser(@RequestParam("token") String token, RedirectAttributes redirectAttributes) {
        boolean success = userService.activateUserByToken(token);
        if (success) {
            redirectAttributes.addFlashAttribute("message", "Account activated successfully. Please login.");
            return "redirect:/login";
        } else {
            redirectAttributes.addFlashAttribute("error", "Activation failed or link expired.");
            return "redirect:/inactive";
        }
    }

    /**
     * Resends the activation email.
     *
     * @param session the HTTP session
     * @param redirectAttributes attributes for flash messages
     * @return the name of the view to redirect to
     */
    @PostMapping("/resend-activation")
    public String resendActivation(HttpSession session, RedirectAttributes redirectAttributes) {
        User loggedUser = (User) session.getAttribute("loggedUser");

        if (loggedUser == null) {
            redirectAttributes.addFlashAttribute("error", "No logged in user found. Please log in again.");
            return "redirect:/login";
        }

        boolean result = userService.resendActivationEmail(loggedUser.getEmail(), loggedUser);
        if (result) {
            redirectAttributes.addFlashAttribute("message", "Activation link resent. Please check your email.");
        } else {
            redirectAttributes.addFlashAttribute("error", "Failed to resend activation link. Please ensure the email is correct or contact support.");
        }
        return "redirect:/inactive";
    }

    /**
     * Displays the login form.
     *
     * @param model the model to pass attributes to the view
     * @param request the HTTP request
     * @return the name of the view to render
     */
    @GetMapping("/login")
    public String showLoginForm(Model model, HttpServletRequest request) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && !(authentication instanceof AnonymousAuthenticationToken) && authentication.isAuthenticated()) {
            return "redirect:/";
        }
        model.addAttribute("loginDTO", new LoginDTO());
        return "login";
    }

    /**
     * Handles the login form submission.
     *
     * @param loginDTO the login data transfer object
     * @param result the binding result for validation
     * @param attributes attributes for flash messages
     * @return the name of the view to redirect to
     */
    @PostMapping("/process_login")
    public String login(@Valid @ModelAttribute("loginDTO") LoginDTO loginDTO,
                        BindingResult result, RedirectAttributes redirectAttributes, Model model) {
        if (result.hasErrors()) {
            return "login";
        }

        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(loginDTO.getUsername(), loginDTO.getPassword());
        try {
            Authentication authentication = authenticationManager.authenticate(token);
            if (authentication.isAuthenticated()) {
                SecurityContextHolder.getContext().setAuthentication(authentication);
                return "redirect:/";
            }
        } catch (BadCredentialsException ex) {
            redirectAttributes.addFlashAttribute("error", "Invalid password");
        } catch (UsernameNotFoundException ex) {
            redirectAttributes.addFlashAttribute("error", "Invalid username");
        } catch (Exception ex) {
            redirectAttributes.addFlashAttribute("error", "An error occurred during login");
        }
        logger.info("Flash attributes before redirect: {}", redirectAttributes.getFlashAttributes());

        return "redirect:/login";
    }
}
