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
class RoomRepositoryTest {

    @Autowired
    private RoomRepository roomRepository;

    @Test
    void findAvailableRoomsByHotelIdAndDate() {
        Long hotelId = 1L; // Assuming you have a hotel with this ID
        LocalDate startDate = LocalDate.now();
        LocalDate endDate = startDate.plusDays(5);
        int guestCount = 2;

        List<Room> rooms = roomRepository.findAvailableRoomsByHotelIdAndDate(hotelId, startDate, endDate, guestCount);

        assertThat(rooms).isNotNull();
    }
}