package org.sukriyesahin.quickstay.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.sukriyesahin.quickstay.dto.GuestDTO;
import org.sukriyesahin.quickstay.dto.ReservationDTO;
import org.sukriyesahin.quickstay.model.hotel.Room;
import org.sukriyesahin.quickstay.model.reservation.Payment;
import org.sukriyesahin.quickstay.model.reservation.Reservation;
import org.sukriyesahin.quickstay.service.ReservationService;
import org.sukriyesahin.quickstay.service.RoomService;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Controller for handling reservation-related requests.
 * Provides endpoints for creating, viewing, and canceling reservations.
 */
@Controller
public class ReservationController {

    private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);

    @Autowired
    private ReservationService reservationService;

    @Autowired
    private RoomService roomService;

    /**
     * Displays the reservation form for a specific room.
     *
     * @param roomId the ID of the room to reserve
     * @param checkInDate the check-in date
     * @param checkOutDate the check-out date
     * @param adults the number of adults
     * @param children the number of children
     * @param model the model to pass attributes to the view
     * @return the name of the view to render
     */
    @GetMapping("/reservation/{roomId}")
    public String showReservationForm(@PathVariable Long roomId,
                                      @RequestParam String checkInDate,
                                      @RequestParam String checkOutDate,
                                      @RequestParam int adults,
                                      @RequestParam int children,
                                      Model model) {
        logger.info("Reservation request for room ID: {}, checkInDate: {}, checkOutDate: {}, adults: {}, children: {}",
                roomId, checkInDate, checkOutDate, adults, children);

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate startDate = LocalDate.parse(checkInDate, formatter);
        LocalDate endDate = LocalDate.parse(checkOutDate, formatter);
        Room room = roomService.findRoomById(roomId);
        BigDecimal costPerNight = room.getCostPerNight();
        long numberOfNights = ChronoUnit.DAYS.between(startDate, endDate);
        BigDecimal totalCost = costPerNight.multiply(BigDecimal.valueOf(numberOfNights));

        ReservationDTO reservationDTO = new ReservationDTO();
        reservationDTO.setRoomId(roomId);
        reservationDTO.setStartDate(checkInDate);
        reservationDTO.setEndDate(checkOutDate);
        reservationDTO.setTotalCost(totalCost);

        List<GuestDTO> guests = new ArrayList<>();
        for (int i = 0; i < adults; i++) {
            GuestDTO adultGuest = new GuestDTO();
            adultGuest.setChild(false);
            guests.add(adultGuest);
        }
        for (int i = 0; i < children; i++) {
            GuestDTO childGuest = new GuestDTO();
            childGuest.setChild(true);
            guests.add(childGuest);
        }
        reservationDTO.setGuests(guests);

        model.addAttribute("reservationDTO", reservationDTO);
        model.addAttribute("paymentMethods", Arrays.asList(Payment.PaymentMethod.values()));
        model.addAttribute("roomId", roomId);
        return "reservation";
    }

    /**
     * Processes the reservation form and saves the reservation.
     *
     * @param reservationDTO the reservation data transfer object
     * @param roomId the ID of the room to reserve
     * @param attributes attributes for flash messages
     * @return the name of the view to redirect to
     */
    @PostMapping("/submitReservation")
    public String processReservation(@ModelAttribute ReservationDTO reservationDTO,
                                     @RequestParam Long roomId,
                                     RedirectAttributes attributes) {
        logger.info("Processing reservation: {}", reservationDTO);
        try {
            reservationDTO.setRoomId(roomId);
            reservationService.saveReservation(reservationDTO);
            attributes.addFlashAttribute("success", "Reservation successfully created.");
        } catch (Exception e) {
            attributes.addFlashAttribute("error", "An error occurred while creating the reservation.");
        }
        return "redirect:/my-reservations";
    }

    /**
     * Displays the current user's reservations.
     *
     * @param model the model to pass attributes to the view
     * @param authentication the authentication object containing user details
     * @return the name of the view to render
     */
    @GetMapping("/my-reservations")
    public String viewMyReservations(Model model, Authentication authentication) {
        String username = authentication.getName();
        logger.info("Fetching reservations for user: {}", username);
        List<Reservation> reservations = reservationService.findReservationsByUsername(username);
        model.addAttribute("reservations", reservations);
        return "my-reservations";
    }

    /**
     * Cancels a specific reservation.
     *
     * @param reservationId the ID of the reservation to cancel
     * @param attributes attributes for flash messages
     * @return the name of the view to redirect to
     */
    @PostMapping("/cancel-reservation/{reservationId}")
    public String cancelReservation(@PathVariable Long reservationId, RedirectAttributes attributes) {
        logger.info("Cancellation request for reservation ID: {}", reservationId);
        try {
            reservationService.cancelReservation(reservationId);
            logger.info("Reservation with ID {} canceled successfully", reservationId);
            attributes.addFlashAttribute("success", "Reservation successfully canceled.");
        } catch (Exception e) {
            logger.error("Error canceling reservation with ID {}", reservationId, e);
            attributes.addFlashAttribute("error", "An error occurred while canceling the reservation.");
        }
        return "redirect:/my-reservations";
    }
}
