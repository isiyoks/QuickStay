package org.sukriyesahin.quickstay.repository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.sukriyesahin.quickstay.dto.FeatureDTO;
import org.sukriyesahin.quickstay.model.hotel.RoomFeature;

import java.util.Arrays;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
class FeatureRepositoryTest {

    @Autowired
    private FeatureRepository featureRepository;

    @Test
    void findByRoomIdIn() {
        List<RoomFeature> features = featureRepository.findByRoomIdIn(Arrays.asList(1L, 2L));

        assertThat(features).isNotEmpty();
    }

    @Test
    void findByRoomId() {
        List<FeatureDTO> featureDTOs = featureRepository.findByRoomId(1L);

        assertThat(featureDTOs).isNotEmpty();
        assertThat(featureDTOs.get(0).getName()).isEqualTo("Balcony");
    }
}