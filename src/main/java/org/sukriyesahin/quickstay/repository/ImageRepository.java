package org.sukriyesahin.quickstay.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.sukriyesahin.quickstay.model.hotel.Image;

import java.util.List;

@Repository
public interface ImageRepository extends JpaRepository<Image, Long> {
    @Query("SELECT i FROM Image i WHERE i.room.id = :roomId")
    List<Image> findByRoomId(@Param("roomId") Long roomId);

    @Query("SELECT i FROM Image i WHERE i.hotel.id = :hotelId")
    List<Image> findByHotelId(@Param("hotelId") Long hotelId);
}
