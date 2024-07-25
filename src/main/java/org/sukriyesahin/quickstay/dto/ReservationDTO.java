package org.sukriyesahin.quickstay.dto;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class ReservationDTO {
    private List<GuestDTO> guests;
    private PaymentDTO payment;
    private String startDate;
    private String endDate;
    private BigDecimal totalCost;
    private Long roomId;

    public List<GuestDTO> getGuests() {
        return guests;
    }

    public void setGuests(List<GuestDTO> guests) {
        this.guests = guests;
    }
}