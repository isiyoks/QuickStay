package org.sukriyesahin.quickstay.repository;

import org.springframework.stereotype.Repository;
import org.sukriyesahin.quickstay.model.user.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByUsername(String username);
    Optional<User> findByEmail(String email);
    Optional<User> findByActivationToken(String activationCode);
    Optional<User> findByActivationTokenAndActivationTokenExpiryAfter(String activationCode, LocalDate now);
}