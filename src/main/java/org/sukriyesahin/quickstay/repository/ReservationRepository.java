package org.sukriyesahin.quickstay.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.sukriyesahin.quickstay.model.reservation.Reservation;
import org.sukriyesahin.quickstay.model.user.User;

import java.util.List;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {
    List<Reservation> findByUser(User user);
}
