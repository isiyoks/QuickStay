package org.sukriyesahin.quickstay.service;

import org.sukriyesahin.quickstay.dto.RegistrationDTO;
import org.sukriyesahin.quickstay.model.user.User;

import java.time.LocalDate;
import java.util.Optional;

public interface UserService {
    User register(RegistrationDTO registrationDTO);
    Optional<User> findByUsername(String username);
    boolean activateUser(String activationToken);
    User createCorporateUser(User user, String roleName); // New method for creating corporate users
    boolean resendActivationEmail(String email, User user);
    boolean activateUserByToken(String token);
    Optional<User> findByActivationToken(String token);
}