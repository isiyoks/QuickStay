package org.sukriyesahin.quickstay.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class HotelDTO {
    private Long id;
    private String name;
    private Integer stars;
    private String city;
    private String state;
    private String country;
    private Double latitude;
    private Double longitude;
    private Long availableRooms;
    private Double avgRating;
    private Long numReviews;
    private Long imageId;  // Use Long to allow for null values if no image is present
}
