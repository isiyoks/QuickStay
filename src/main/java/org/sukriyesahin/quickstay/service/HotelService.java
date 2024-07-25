package org.sukriyesahin.quickstay.service;

import org.sukriyesahin.quickstay.dto.HotelDTO;
import org.sukriyesahin.quickstay.dto.HotelDetailsDTO;
import org.sukriyesahin.quickstay.dto.SearchDTO;
import org.sukriyesahin.quickstay.model.hotel.Hotel;

import java.time.LocalDate;
import java.util.List;

public interface HotelService {
    List<HotelDTO> findAvailableHotels(SearchDTO searchDTO);
    HotelDetailsDTO getHotelDetails(Long hotelId, LocalDate checkInDate, LocalDate checkOutDate, int guestCount);
}
