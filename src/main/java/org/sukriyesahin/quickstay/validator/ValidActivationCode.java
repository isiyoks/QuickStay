package org.sukriyesahin.quickstay.validation;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;
import org.sukriyesahin.quickstay.validator.ActivationCodeValidator;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.lang.annotation.ElementType;
import java.lang.annotation.RetentionPolicy;

@Documented
@Constraint(validatedBy = ActivationCodeValidator.class)
@Target({ ElementType.METHOD, ElementType.FIELD, ElementType.PARAMETER })
@Retention(RetentionPolicy.RUNTIME)
public @interface ValidActivationCode {
    String message() default "Invalid or missing activation token";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
