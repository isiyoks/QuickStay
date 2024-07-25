package org.sukriyesahin.quickstay.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.sukriyesahin.quickstay.dto.FeatureDTO;
import org.sukriyesahin.quickstay.model.hotel.RoomFeature;

import java.util.List;

/**
 * Repository interface for accessing RoomFeature data.
 * Provides methods for querying RoomFeature entities from the database.
 */
@Repository
public interface FeatureRepository extends JpaRepository<RoomFeature, Long> {

    /**
     * Finds RoomFeatures by a list of room IDs.
     *
     * @param roomIds the list of room IDs
     * @return a list of RoomFeatures associated with the given room IDs
     */
    List<RoomFeature> findByRoomIdIn(List<Long> roomIds);

    /**
     * Finds features by room ID and maps them to FeatureDTO.
     *
     * @param roomId the ID of the room
     * @return a list of FeatureDTOs for the given room ID
     */
    @Query("SELECT new org.sukriyesahin.quickstay.dto.FeatureDTO(rf.name) FROM RoomFeature rf WHERE rf.room.id = :roomId")
    List<FeatureDTO> findByRoomId(@Param("roomId") Long roomId);
}
