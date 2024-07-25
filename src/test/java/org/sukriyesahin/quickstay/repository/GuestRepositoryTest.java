package org.sukriyesahin.quickstay.repository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.sukriyesahin.quickstay.model.user.Guest;
import org.sukriyesahin.quickstay.model.user.User;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
class GuestRepositoryTest {

    @Autowired
    private GuestRepository guestRepository;

    @Autowired
    private UserRepository userRepository;

    @Test
    void testSaveGuest() {
        User user = new User();
        user.setUsername("testUser");
        user.setFirstName("testFirstName");
        user.setLastName("testLastName");
        user.setPassword("password");
        user.setEmail("test@example.com");
        User savedUser = userRepository.save(user);

        Guest guest = new Guest();
        guest.setFirstName("Test");
        guest.setLastName("Guest");
        guest.setUser(savedUser);
        Guest savedGuest = guestRepository.save(guest);

        assertThat(savedGuest).isNotNull();
        assertThat(savedGuest.getId()).isNotNull();
    }
}