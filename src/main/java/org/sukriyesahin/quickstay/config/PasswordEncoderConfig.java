package org.sukriyesahin.quickstay.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * Configuration class for setting up the password encoder.
 * It configures the PasswordEncoder bean using BCrypt.
 */
@Configuration
public class PasswordEncoderConfig {

    /**
     * Configures and returns a PasswordEncoder bean.
     *
     * @return a configured BCryptPasswordEncoder instance
     */
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
