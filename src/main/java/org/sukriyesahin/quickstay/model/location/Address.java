package org.sukriyesahin.quickstay.model.location;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.validation.constraints.*;

import java.math.BigDecimal;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    @NotBlank
    @NotNull
    private String addressLine1;

    private String addressLine2;  // Optional, no constraints

    @Column(nullable = false)
    @NotBlank
    @NotNull
    private String city;

    @Column(nullable = false)
    @NotBlank
    @NotNull
    private String state;

    @Column(nullable = false)
    @NotBlank
    @NotNull
    private String postalCode;

    @Column(nullable = false)
    @NotBlank
    @NotNull
    private String country;

    @Column(nullable = false)
    @NotBlank
    @NotNull
    private String addressType;

    @Column(precision=10, scale=6, nullable = false)
    @Digits(integer=10, fraction=6)  // Ensures the format of decimal data
    private BigDecimal latitude;

    @Column(precision=10, scale=6, nullable = false)
    @Digits(integer=10, fraction=6)  // Ensures the format of decimal data
    private BigDecimal longitude;
}
