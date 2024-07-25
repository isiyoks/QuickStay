package org.sukriyesahin.quickstay.service;

import org.sukriyesahin.quickstay.dto.ReservationDTO;
import org.sukriyesahin.quickstay.model.reservation.Reservation;

import java.util.List;

public interface ReservationService {
    void saveReservation(ReservationDTO reservationDTO);
    List<Reservation> findReservationsByUsername(String username);
    void cancelReservation(Long reservationId);
}
