package org.sukriyesahin.quickstay.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.sukriyesahin.quickstay.dto.*;
import org.sukriyesahin.quickstay.model.hotel.Hotel;
import org.sukriyesahin.quickstay.model.hotel.Image;
import org.sukriyesahin.quickstay.model.hotel.Room;
import org.sukriyesahin.quickstay.repository.*;
import org.sukriyesahin.quickstay.service.HotelService;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class HotelServiceImpl implements HotelService {

    @Autowired
    private HotelRepository hotelRepository;

    @Autowired
    private ReviewRepository reviewRepository;

    @Autowired
    private FeatureRepository featureRepository;

    @Autowired
    private RoomRepository roomRepository;

    @Autowired
    private ImageRepository imageRepository;

    @Override
    public List<HotelDTO> findAvailableHotels(SearchDTO searchDTO) {
        LocalDate checkInDate = searchDTO.getCheckInDate();
        LocalDate checkOutDate = searchDTO.getCheckOutDate();
        double latitude = searchDTO.getLatitude();
        double longitude = searchDTO.getLongitude();
        int guestCount = searchDTO.getAdults() + searchDTO.getChildren();  // Total guests
        double radius = 50;  // You can adjust this radius as needed

        List<Object[]> results = hotelRepository.findAvailableHotels(latitude, longitude, checkInDate, checkOutDate, guestCount, radius);

        return results.stream()
                .map(result -> {
                    Long id = result[0] != null ? ((Number) result[0]).longValue() : null;
                    String name = (String) result[1];
                    Integer stars = result[2] != null ? ((Number) result[2]).intValue() : null;
                    String city = (String) result[3];
                    String state = (String) result[4];
                    String country = (String) result[5];
                    Double lat = result[6] != null ? ((Number) result[6]).doubleValue() : null;
                    Double lon = result[7] != null ? ((Number) result[7]).doubleValue() : null;
                    Long availableRooms = result[8] != null ? ((Number) result[8]).longValue() : null;
                    Double avgRating = result[9] != null ? ((Number) result[9]).doubleValue() : null;
                    Long numReviews = result[10] != null ? ((Number) result[10]).longValue() : null;
                    Long imageId = result[11] != null ? ((Number) result[11]).longValue() : null;

                    return new HotelDTO(id, name, stars, city, state, country, lat, lon, availableRooms, avgRating, numReviews, imageId);
                })
                .filter(dto -> dto.getId() != null)  // Only include non-null results
                .collect(Collectors.toList());
    }

    @Override
    public HotelDetailsDTO getHotelDetails(Long hotelId, LocalDate checkInDate, LocalDate checkOutDate, int guestCount) {
        Hotel hotel = hotelRepository.findById(hotelId)
                .orElseThrow(() -> new IllegalArgumentException("Invalid hotel ID: " + hotelId));

        List<RoomDTO> rooms = roomRepository.findAvailableRoomsByHotelIdAndDate(hotelId, checkInDate, checkOutDate, guestCount)
                .stream()
                .map(room -> {
                    List<FeatureDTO> features = featureRepository.findByRoomId(room.getId())
                            .stream()
                            .map(feature -> new FeatureDTO(feature.getName()))
                            .collect(Collectors.toList());
                    Long imageId = imageRepository.findByRoomId(room.getId())
                            .stream()
                            .findFirst()
                            .map(Image::getId)
                            .orElse(null); // Assumes a default or null value if no image is found.
                    return new RoomDTO(room.getId(), room.getNumber(), room.getCostPerNight(), "Available", features, imageId);
                })
                .collect(Collectors.toList());

        List<ReviewDTO> reviews = reviewRepository.findByHotelId(hotelId)
                .stream()
                .map(review -> new ReviewDTO(review.getComment(), review.getUser().getUsername(), review.getRating()))
                .toList();

        Double avgRating = reviewRepository.findAverageRatingByHotelId(hotelId);
        Long numReviews = reviewRepository.countByHotelId(hotelId);


        return new HotelDetailsDTO(
                hotel.getId(),
                hotel.getName(),
                hotel.getAddress().getCity() + ", " + hotel.getAddress().getState() + ", " + hotel.getAddress().getCountry(),
                avgRating,
                numReviews,
                rooms,
                reviews,
                hotel.getEarliestCheckInTime(),
                hotel.getCheckOutTime(),
                checkInDate,
                checkOutDate
        );
    }


}
