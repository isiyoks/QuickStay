package org.sukriyesahin.quickstay.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;

/**
 * Configuration class for setting up the mail sender.
 * It configures the JavaMailSender bean with SMTP settings for sending emails.
 */
@Configuration
public class MailConfig {

    /**
     * Configures and returns a JavaMailSender bean.
     *
     * @return a configured JavaMailSender instance
     */
    @Bean
    public JavaMailSender javaMailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587);

        mailSender.setUsername("quickstay3@gmail.com");
        mailSender.setPassword("crvl jert tymh jmjl");

        Properties props = mailSender.getJavaMailProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.debug", "true");

        return mailSender;
    }
}
