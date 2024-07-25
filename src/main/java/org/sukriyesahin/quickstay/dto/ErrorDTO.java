package org.sukriyesahin.quickstay.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ErrorDTO {
    private String title;
    private String message;
    private int statusCode;
    private String details;
}
