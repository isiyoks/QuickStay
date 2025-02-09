package org.sukriyesahin.quickstay.validator;

import org.sukriyesahin.quickstay.dto.RegistrationDTO;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class PasswordMatchValidator implements ConstraintValidator<PasswordMatches, RegistrationDTO> {
    @Override
    public void initialize(PasswordMatches constraintAnnotation) {
    }

    @Override
    public boolean isValid(RegistrationDTO registrationDTO, ConstraintValidatorContext context) {
        return registrationDTO.getPassword().equals(registrationDTO.getConfirmPassword());
    }
}
