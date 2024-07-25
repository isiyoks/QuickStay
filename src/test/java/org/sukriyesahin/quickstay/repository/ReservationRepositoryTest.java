package org.sukriyesahin.quickstay.repository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.sukriyesahin.quickstay.model.reservation.Reservation;
import org.sukriyesahin.quickstay.model.user.User;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
class ReservationRepositoryTest {

    @Autowired
    private ReservationRepository reservationRepository;

    @Autowired
    private UserRepository userRepository;

    @Test
    void findByUser() {
        User user = userRepository.findByUsername("dummyUser").orElse(null);
        assertThat(user).isNull();

        List<Reservation> reservations = reservationRepository.findByUser(user);
        assertThat(reservations).isNotNull(); // You might want to add more assertions based on your test data
    }
}