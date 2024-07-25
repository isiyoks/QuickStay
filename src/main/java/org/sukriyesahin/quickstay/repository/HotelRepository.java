package org.sukriyesahin.quickstay.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.sukriyesahin.quickstay.model.hotel.Hotel;
import org.sukriyesahin.quickstay.model.hotel.Room;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

/**
 * Repository interface for accessing Hotel data.
 * Provides methods for querying Hotel and Room entities from the database.
 */
@Repository
public interface HotelRepository extends JpaRepository<Hotel, Long> {

    /**
     * Finds available hotels based on the provided parameters.
     *
     * @param latitude the latitude of the search location
     * @param longitude the longitude of the search location
     * @param checkInDate the check-in date
     * @param checkOutDate the check-out date
     * @param guestCount the number of guests
     * @param radius the search radius
     * @return a list of available hotels as Object arrays
     */
    @Query(value = "WITH RoomCapacity AS ( " +
            "SELECT r.id AS room_id, r.hotel_id, SUM(b.sleep) AS total_capacity " +
            "FROM Room r " +
            "JOIN Room_Bed rb ON r.id = rb.room_id " +
            "JOIN Bed b ON rb.bed_id = b.id " +
            "GROUP BY r.id, r.hotel_id), " +
            "AvailableRooms AS ( " +
            "SELECT rc.room_id, rc.hotel_id, rc.total_capacity " +
            "FROM RoomCapacity rc " +
            "LEFT JOIN Reservation res ON rc.room_id = res.room_id " +
            "AND res.start_date <= :checkOutDate " +
            "AND res.end_date >= :checkInDate " +
            "WHERE res.id IS NULL " +
            "AND rc.total_capacity >= :guestCount) " +
            "SELECT h.id, h.name, h.stars, a.city, a.state, a.country, a.latitude, a.longitude, " +
            "COUNT(ar.room_id) AS availableRooms, " +
            "AVG(rv.rating) AS avgRating, COUNT(rv.hotel_id) AS numReviews, " +
            "(SELECT i.id FROM Image i WHERE i.hotel_id = h.id LIMIT 1) AS imageId " +
            "FROM Hotel h " +
            "JOIN Address a ON h.address_id = a.id " +
            "JOIN AvailableRooms ar ON h.id = ar.hotel_id " +
            "LEFT JOIN Review rv ON h.id = rv.hotel_id " +
            "WHERE (6371 * acos(cos(radians(:latitude)) * cos(radians(a.latitude)) * " +
            "cos(radians(a.longitude) - radians(:longitude)) + sin(radians(:latitude)) * " +
            "sin(radians(a.latitude)))) < :radius " +
            "GROUP BY h.id, h.name, h.stars, a.city, a.state, a.country, a.latitude, a.longitude " +
            "HAVING COUNT(ar.room_id) > 0",
            nativeQuery = true)
    List<Object[]> findAvailableHotels(double latitude, double longitude, LocalDate checkInDate, LocalDate checkOutDate, int guestCount, double radius);

    /**
     * Finds available rooms for a specific hotel based on the provided parameters.
     *
     * @param hotelId the ID of the hotel
     * @param checkInDate the check-in date
     * @param checkOutDate the check-out date
     * @param guestCount the number of guests
     * @return a list of available rooms
     */
    @Query("SELECT r FROM Room r JOIN r.beds b JOIN r.hotel h WHERE h.id = :hotelId " +
            "AND NOT EXISTS (SELECT res FROM Reservation res WHERE res.room.id = r.id AND " +
            "res.endDate >= :checkInDate AND res.startDate <= :checkOutDate) " +
            "GROUP BY r HAVING SUM(b.sleep) >= :guestCount")
    List<Room> findAvailableRooms(Long hotelId, LocalDate checkInDate, LocalDate checkOutDate, int guestCount);

    /**
     * Finds rooms with beds for a specific hotel.
     *
     * @param hotelId the ID of the hotel
     * @return a list of rooms with beds
     */
    @Query("SELECT r FROM Room r JOIN FETCH r.beds WHERE r.hotel.id = :hotelId")
    List<Room> findRoomsWithBedsByHotelId(@Param("hotelId") Long hotelId);

    /**
     * Finds rooms with images for a specific hotel.
     *
     * @param hotelId the ID of the hotel
     * @return a list of rooms with images
     */
    @Query("SELECT r FROM Room r JOIN FETCH r.images WHERE r.hotel.id = :hotelId")
    List<Room> findRoomsWithImagesByHotelId(@Param("hotelId") Long hotelId);

    /**
     * Finds a hotel by its ID.
     *
     * @param id the ID of the hotel
     * @return an Optional containing the hotel if found, or empty if not found
     */
    Optional<Hotel> findById(Long id);
}
