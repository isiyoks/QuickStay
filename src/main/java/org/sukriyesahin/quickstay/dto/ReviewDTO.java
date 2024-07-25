package org.sukriyesahin.quickstay.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ReviewDTO {
    private String review;
    private String author;
    private double rating;
}
