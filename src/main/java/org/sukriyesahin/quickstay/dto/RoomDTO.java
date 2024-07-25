package org.sukriyesahin.quickstay.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.sukriyesahin.quickstay.model.hotel.Bed;
import org.sukriyesahin.quickstay.model.hotel.Image;
import org.sukriyesahin.quickstay.model.hotel.RoomFeature;

import java.math.BigDecimal;
import java.util.List;

@Data
@AllArgsConstructor
public class RoomDTO {
    private Long id;
    private String number;
    private BigDecimal costPerNight;
    private String availability;
    private List<FeatureDTO> features;
    private Long imageId;
}
