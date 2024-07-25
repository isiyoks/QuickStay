package org.sukriyesahin.quickstay.model.hotel;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Bed {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String type; // Type of bed, e.g., King, Queen, Twin

    @Column(nullable = false)
    private int sleep; // Number of people the bed can accommodate
}
