package org.sukriyesahin.quickstay.dto;

import lombok.Data;

import java.time.LocalDate;

@Data
public class SearchDTO {
    private String destination;
    private String dateRange;
    private int adults;
    private int children;
    private int rooms;
    LocalDate checkInDate;
    LocalDate checkOutDate;
    private double latitude;
    private double longitude;
}