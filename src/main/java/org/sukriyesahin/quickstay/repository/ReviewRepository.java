package org.sukriyesahin.quickstay.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.sukriyesahin.quickstay.dto.ReviewDTO;
import org.sukriyesahin.quickstay.model.hotel.Review;

import java.util.List;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {

    @Query("SELECT new org.sukriyesahin.quickstay.dto.ReviewDTO(r.comment, u.username, r.rating) " +
            "FROM Review r JOIN User u ON r.user.id = u.id " +
            "WHERE r.hotel.id = :hotelId")
    List<ReviewDTO> findReviewsByHotelId(Long hotelId);

    @Query("SELECT AVG(r.rating) FROM Review r WHERE r.hotel.id = :hotelId")
    Double findAverageRatingByHotelId(Long hotelId);

    List<Review> findByHotelId(Long hotelId);
    Long countByHotelId(Long hotelId);
}
