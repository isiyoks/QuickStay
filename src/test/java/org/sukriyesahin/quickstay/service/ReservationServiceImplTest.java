package org.sukriyesahin.quickstay.service.impl;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.sukriyesahin.quickstay.dto.PaymentDTO;
import org.sukriyesahin.quickstay.dto.ReservationDTO;
import org.sukriyesahin.quickstay.model.hotel.Room;
import org.sukriyesahin.quickstay.model.reservation.Payment;
import org.sukriyesahin.quickstay.model.user.User;
import org.sukriyesahin.quickstay.repository.*;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Optional;

import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class ReservationServiceImplTest {

    @Mock
    private ReservationRepository reservationRepository;

    @Mock
    private GuestRepository guestRepository;

    @Mock
    private PaymentRepository paymentRepository;

    @Mock
    private UserRepository userRepository;

    @Mock
    private RoomRepository roomRepository;

    @InjectMocks
    private ReservationServiceImpl reservationService;

    @Test
    void saveReservation() {
        ReservationDTO reservationDTO = new ReservationDTO();
        reservationDTO.setStartDate("2024-01-01");
        reservationDTO.setEndDate("2024-01-05");
        reservationDTO.setTotalCost(BigDecimal.valueOf(500.00));
        reservationDTO.setRoomId(1L);

        reservationDTO.setGuests(new ArrayList<>());

        PaymentDTO paymentDTO = new PaymentDTO();
        paymentDTO.setAmount(BigDecimal.valueOf(500.00)); // Set the amount
        paymentDTO.setPaymentMethod(Payment.PaymentMethod.MASTERCARD.toString()); // Set payment method
        reservationDTO.setPayment(paymentDTO);

        User user = new User();
        user.setId(1L);
        user.setUsername("testuser");
        Authentication authentication = mock(Authentication.class);
        when(authentication.isAuthenticated()).thenReturn(true);
        when(authentication.getPrincipal()).thenReturn(user);
        SecurityContextHolder.getContext().setAuthentication(authentication);

        Room room = new Room();
        room.setId(1L);
        when(userRepository.findByUsername("testuser")).thenReturn(Optional.of(user));
        when(roomRepository.findById(1L)).thenReturn(Optional.of(room));

        reservationService.saveReservation(reservationDTO);

        verify(reservationRepository, times(1)).save(any());
        verify(guestRepository, times(0)).save(any()); // No guests in the DTO
        verify(paymentRepository, times(1)).save(any());
    }
}