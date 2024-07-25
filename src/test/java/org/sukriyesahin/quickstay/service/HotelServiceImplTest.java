package org.sukriyesahin.quickstay.service;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.sukriyesahin.quickstay.dto.HotelDTO;
import org.sukriyesahin.quickstay.dto.SearchDTO;
import org.sukriyesahin.quickstay.repository.*;
import org.sukriyesahin.quickstay.service.impl.HotelServiceImpl;

import java.time.LocalDate;
import java.util.Collections;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class HotelServiceImplTest {

    @Mock
    private HotelRepository hotelRepository;

    @Mock
    private ReviewRepository reviewRepository;

    @Mock
    private FeatureRepository featureRepository;

    @Mock
    private RoomRepository roomRepository;

    @Mock
    private ImageRepository imageRepository;

    @InjectMocks
    private HotelServiceImpl hotelService;

    @Test
    void findAvailableHotels() {
        SearchDTO searchDTO = new SearchDTO();
        searchDTO.setCheckInDate(LocalDate.now());
        searchDTO.setCheckOutDate(LocalDate.now().plusDays(1));
        searchDTO.setLatitude(10.0);
        searchDTO.setLongitude(20.0);
        searchDTO.setAdults(2);
        searchDTO.setChildren(1);

        when(hotelRepository.findAvailableHotels(10.0, 20.0, LocalDate.now(), LocalDate.now().plusDays(1), 3, 50))
                .thenReturn(Collections.emptyList());

        List<HotelDTO> hotels = hotelService.findAvailableHotels(searchDTO);

        assertThat(hotels).isEmpty();
    }
}