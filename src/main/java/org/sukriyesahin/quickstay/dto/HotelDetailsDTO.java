package org.sukriyesahin.quickstay.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Data
@AllArgsConstructor
public class HotelDetailsDTO {
    private Long id;
    private String name;
    private String location;
    private double avgRating;
    private long numReviews;
    private List<RoomDTO> rooms;
    private List<ReviewDTO> reviews;
    private LocalTime checkInTime;  // Standard check-in time
    private LocalTime checkOutTime; // Standard check-out time
    private LocalDate userCheckInDate;  // User selected check-in date
    private LocalDate userCheckOutDate; // User selected check-out date
}
