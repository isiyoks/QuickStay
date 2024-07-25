package org.sukriyesahin.quickstay.config;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import java.io.IOException;

/**
 * CustomAuthenticationSuccessHandler handles successful authentication events.
 * It checks if the user's account is enabled and redirects the user accordingly.
 */
@Component
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    /**
     * Handles the successful authentication event.
     *
     * @param request the HTTP request
     * @param response the HTTP response
     * @param authentication the authentication object containing user details
     * @throws IOException if an input or output error is detected when the handler is handling the request
     * @throws ServletException if the request could not be handled
     */
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();

        // Check if the user's account is enabled
        if (!userDetails.isEnabled()) {
            request.getSession().setAttribute("loggedUser", userDetails);
            // Redirect to a specific endpoint if the user is not enabled
            response.sendRedirect("/inactive");
        } else {
            // Redirect to the home page or dashboard
            response.sendRedirect("/");
        }
    }
}
