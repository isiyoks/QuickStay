package org.sukriyesahin.quickstay.model.reservation;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.sukriyesahin.quickstay.model.hotel.Room;
import org.sukriyesahin.quickstay.model.user.Guest;
import org.sukriyesahin.quickstay.model.user.User;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reservation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user; // The user who made the reservation

    @ManyToOne
    @JoinColumn(name = "room_id", nullable = false)
    private Room room; // Room booked

    @ManyToMany
    @JoinTable(
            name = "reservation_guest",
            joinColumns = @JoinColumn(name = "reservation_id"),
            inverseJoinColumns = @JoinColumn(name = "guest_id")
    )
    private Set<Guest> guests = new HashSet<>(); // Guests associated with this reservation

    @Column(nullable = false)
    private LocalDate reservationDate; // Date when the reservation was made

    @Column(nullable = false)
    private LocalDate startDate; // Start date of the booking

    @Column(nullable = false)
    private LocalDate endDate; // End date of the booking

    @Column(nullable = false)
    private BigDecimal totalCost; // Total cost of the reservation

    @Enumerated(EnumType.STRING)
    private ReservationStatus status; // Status of the reservation, e.g., CONFIRMED, CANCELLED

    @OneToMany(mappedBy = "reservation", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<ExtraService> extraServices = new HashSet<>(); // Extra services booked with the reservation

    public enum ReservationStatus {
        BOOKED, CANCELLED, COMPLETED, REFUNDED
    }

}
