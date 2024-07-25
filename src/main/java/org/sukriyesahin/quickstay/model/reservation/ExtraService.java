package org.sukriyesahin.quickstay.model.reservation;

import jakarta.persistence.*;
import java.math.BigDecimal;

@Entity
public class ExtraService {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "reservation_id", nullable = false)
    private Reservation reservation; // Link to the reservation that includes this service

    @Column(nullable = false)
    private String serviceName; // Name of the service, e.g., "Airport Transfer", "Spa Package"

    @Column(nullable = false)
    private BigDecimal price; // Price of the service

    public ExtraService() {
    }

    public ExtraService(Reservation reservation, String serviceName, BigDecimal price) {
        this.reservation = reservation;
        this.serviceName = serviceName;
        this.price = price;
    }
}

