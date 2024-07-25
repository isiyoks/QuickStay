package org.sukriyesahin.quickstay.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.sukriyesahin.quickstay.model.hotel.Room;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface RoomRepository extends JpaRepository<Room, Long> {
    @Query("SELECT r FROM Room r JOIN r.beds b JOIN r.hotel h WHERE h.id = :hotelId " +
            "AND NOT EXISTS (SELECT res FROM Reservation res WHERE res.room.id = r.id AND " +
            "res.endDate >= :startDate AND res.startDate <= :endDate) " +
            "GROUP BY r HAVING SUM(b.sleep) >= :guestCount")
    List<Room> findAvailableRoomsByHotelIdAndDate(Long hotelId, LocalDate startDate, LocalDate endDate, int guestCount);
}
