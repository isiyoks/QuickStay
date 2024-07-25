package org.sukriyesahin.quickstay.repository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.sukriyesahin.quickstay.model.hotel.Room;

import java.time.LocalDate;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
class HotelRepositoryTest {

    @Autowired
    private HotelRepository hotelRepository;

    @Test
    void findAvailableHotels() {
        // Sample data for testing
        double latitude = 34.0522; // Example latitude
        double longitude = -118.2437; // Example longitude
        LocalDate checkInDate = LocalDate.now().plusDays(2);
        LocalDate checkOutDate = checkInDate.plusDays(3);
        int guestCount = 2;
        double radius = 10.0; // 10 km radius

        List<Object[]> results = hotelRepository.findAvailableHotels(
                latitude, longitude, checkInDate, checkOutDate, guestCount, radius);

        // Assertions
        assertThat(results).isNotEmpty(); // Assuming you have hotels within the radius with available rooms
    }

    @Test
    void findAvailableRooms() {
        // Assuming you have a hotel with ID 1 and rooms with enough capacity
        Long hotelId = 1L;
        LocalDate checkInDate = LocalDate.now().plusDays(2);
        LocalDate checkOutDate = checkInDate.plusDays(3);
        int guestCount = 2;

        List<Room> availableRooms = hotelRepository.findAvailableRooms(hotelId, checkInDate, checkOutDate, guestCount);

        assertThat(availableRooms).isNotEmpty();
    }
}