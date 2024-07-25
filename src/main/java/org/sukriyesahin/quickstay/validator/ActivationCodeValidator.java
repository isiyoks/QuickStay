package org.sukriyesahin.quickstay.validator;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class ActivationCodeValidator implements ConstraintValidator<org.sukriyesahin.quickstay.validation.ValidActivationCode, String> {
    @Override
    public void initialize(org.sukriyesahin.quickstay.validation.ValidActivationCode constraintAnnotation) {
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        return value != null && !value.trim().isEmpty();
    }
}
