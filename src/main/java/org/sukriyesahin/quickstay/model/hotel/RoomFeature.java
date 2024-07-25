package org.sukriyesahin.quickstay.model.hotel;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoomFeature {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name; // Feature name, e.g., "Ocean View", "Balcony"

    @ManyToOne
    @JoinColumn(name = "room_id", nullable = false)
    private Room room; // Link back to the room

    public RoomFeature(String name) {
        this.name = this.name;
    }
}
