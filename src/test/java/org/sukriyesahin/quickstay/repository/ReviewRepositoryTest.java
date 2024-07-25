package org.sukriyesahin.quickstay.repository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.sukriyesahin.quickstay.dto.ReviewDTO;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
class ReviewRepositoryTest {

    @Autowired
    private ReviewRepository reviewRepository;

    @Test
    void findReviewsByHotelId() {
        List<ReviewDTO> reviews = reviewRepository.findReviewsByHotelId(1L); // Assuming you have reviews for hotel with ID 1

        assertThat(reviews).isNotEmpty();
    }

    @Test
    void findAverageRatingByHotelId() {
        Double avgRating = reviewRepository.findAverageRatingByHotelId(1L);

        assertThat(avgRating).isNotNull();
    }
}