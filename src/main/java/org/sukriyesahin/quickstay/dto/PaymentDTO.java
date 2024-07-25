package org.sukriyesahin.quickstay.dto;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class PaymentDTO {
    private String paymentMethod;
    private BigDecimal amount;
}
