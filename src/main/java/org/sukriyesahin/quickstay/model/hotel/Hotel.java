package org.sukriyesahin.quickstay.model.hotel;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.sukriyesahin.quickstay.model.location.Address;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import java.math.BigDecimal;
import java.time.LocalTime;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@NoArgsConstructor
public class Hotel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "address_id", referencedColumnName = "id")
    private Address address;

    @Column(nullable = false)
    private int stars;

    @Column(nullable = false)
    @Email
    private String corporateEmail;

    @OneToMany(mappedBy = "hotel", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<Room> rooms = new HashSet<>();

    @OneToMany(mappedBy = "hotel", cascade = CascadeType.ALL)
    private Set<Image> images = new HashSet<>();

    @OneToMany(mappedBy = "hotel", cascade = CascadeType.ALL)
    private Set<Review> reviews = new HashSet<>();

    private LocalTime earliestCheckInTime;
    private LocalTime latestCheckInTime;
    private LocalTime checkOutTime;
    private BigDecimal lateCheckoutFee;

    private static final LocalTime DEFAULT_EARLIEST_CHECK_IN = LocalTime.of(13, 0);
    private static final LocalTime DEFAULT_LATEST_CHECK_IN = LocalTime.of(22, 0);
    private static final LocalTime DEFAULT_CHECKOUT = LocalTime.of(11, 0);
    private static final BigDecimal DEFAULT_LATE_CHECKOUT_FEE = BigDecimal.valueOf(15.95);

    public Hotel(String name, Address address, int stars, String corporateEmail) {
        this.name = name;
        this.address = address;
        this.stars = stars;
        this.corporateEmail = corporateEmail;
    }

    @PrePersist
    public void prePersist() {
        if (earliestCheckInTime == null) earliestCheckInTime = DEFAULT_EARLIEST_CHECK_IN;
        if (latestCheckInTime == null) latestCheckInTime = DEFAULT_LATEST_CHECK_IN;
        if (checkOutTime == null) checkOutTime = DEFAULT_CHECKOUT;
        if (lateCheckoutFee == null) lateCheckoutFee = DEFAULT_LATE_CHECKOUT_FEE;
    }
}
