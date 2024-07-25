package org.sukriyesahin.quickstay.exception;

import jakarta.persistence.EntityNotFoundException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.sukriyesahin.quickstay.dto.ErrorDTO;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(EntityNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public String handleNotFoundException(EntityNotFoundException ex, Model model) {
        ErrorDTO error = new ErrorDTO("Page Not Found", "The page you are looking for does not exist.", 404, "Try checking the URL or contact support if the issue persists.");
        model.addAttribute("error", error);
        return "error-page";
    }

    @ExceptionHandler(ActivationException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public String handleNotFoundException(ActivationException ex, Model model) {
        ErrorDTO error = new ErrorDTO("Unauthorized Access", ex.getMessage(), 404, "Try checking the URL or contact support if the issue persists.");
        model.addAttribute("error", error);
        return "error-page";
    }

    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public String handleException(Exception ex, Model model) {
        ErrorDTO error = new ErrorDTO("Internal Server Error", "An unexpected error has occurred.", 500, ex.getMessage());
        model.addAttribute("error", error);
        return "error-page";
    }

    @ExceptionHandler(MissingServletRequestParameterException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public String handleMissingParams(MissingServletRequestParameterException ex, Model model) {
        ErrorDTO error = new ErrorDTO("Missing parameter", "Make sure that you use correct request parameter", 500, ex.getMessage());
        model.addAttribute("error", error);
        return "error-page";
    }
}
