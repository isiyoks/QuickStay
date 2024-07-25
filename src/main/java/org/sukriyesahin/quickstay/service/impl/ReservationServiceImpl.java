package org.sukriyesahin.quickstay.service.impl;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.sukriyesahin.quickstay.dto.GuestDTO;
import org.sukriyesahin.quickstay.dto.ReservationDTO;
import org.sukriyesahin.quickstay.model.hotel.Room;
import org.sukriyesahin.quickstay.model.reservation.Payment;
import org.sukriyesahin.quickstay.model.reservation.Reservation;
import org.sukriyesahin.quickstay.model.user.Guest;
import org.sukriyesahin.quickstay.model.user.User;
import org.sukriyesahin.quickstay.repository.*;
import org.sukriyesahin.quickstay.service.ReservationService;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class ReservationServiceImpl implements ReservationService {

    @Autowired
    private ReservationRepository reservationRepository;

    @Autowired
    private GuestRepository guestRepository;

    @Autowired
    private PaymentRepository paymentRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoomRepository roomRepository;

    @Override
    public void saveReservation(ReservationDTO reservationDTO) {
        Reservation reservation = new Reservation();
        reservation.setStartDate(LocalDate.parse(reservationDTO.getStartDate()));
        reservation.setEndDate(LocalDate.parse(reservationDTO.getEndDate()));
        reservation.setTotalCost(reservationDTO.getTotalCost());
        reservation.setStatus(Reservation.ReservationStatus.BOOKED);
        reservation.setReservationDate(LocalDate.now()); // Set the reservation date to the current date

        // Get the current user from the security context
        User currentUser = getCurrentUser();
        reservation.setUser(currentUser);

        // Find and set the room
        Room room = roomRepository.findById(reservationDTO.getRoomId()).orElseThrow(() -> new RuntimeException("Room not found"));
        reservation.setRoom(room);

//        reservationRepository.save(reservation);

        Set<Guest> guests = new HashSet<>();
        for (GuestDTO guestDTO : reservationDTO.getGuests()) {
            Guest guest = new Guest();
            guest.setFirstName(guestDTO.getFirstName());
            guest.setLastName(guestDTO.getLastName());
            guest.setUser(currentUser); // Set the user for each guest

            guestRepository.save(guest);
            guests.add(guest);
        }
        reservation.setGuests(guests);
        reservationRepository.save(reservation);

        Payment payment = new Payment();
        payment.setAmount(reservationDTO.getPayment().getAmount());
        payment.setPaymentMethod(Payment.PaymentMethod.valueOf(reservationDTO.getPayment().getPaymentMethod().toUpperCase()));        payment.setPaymentDate(LocalDate.now());
        payment.setReservation(reservation);
        paymentRepository.save(payment);
    }

    private User getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.isAuthenticated()) {
            String username = ((UserDetails) authentication.getPrincipal()).getUsername();
            return userRepository.findByUsername(username).orElseThrow(() -> new UsernameNotFoundException("User not found"));
        } else {
            throw new RuntimeException("No authenticated user found");
        }
    }

    public List<Reservation> findReservationsByUsername(String username) {
        User user = userRepository.findByUsername(username).orElseThrow(() -> new RuntimeException("User not found"));
        return reservationRepository.findByUser(user);
    }

    public void cancelReservation(Long reservationId) {
        Reservation reservation = reservationRepository.findById(reservationId)
                .orElseThrow(() -> new RuntimeException("Reservation not found"));
        reservation.setStatus(Reservation.ReservationStatus.CANCELLED);
        reservationRepository.save(reservation);
    }
}
