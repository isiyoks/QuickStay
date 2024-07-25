package org.sukriyesahin.quickstay.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.sukriyesahin.quickstay.model.hotel.Room;

public interface RoomService extends JpaRepository<Room, Long> {
    Room findRoomById(Long id);
}
