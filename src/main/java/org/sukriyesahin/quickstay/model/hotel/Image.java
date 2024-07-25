package org.sukriyesahin.quickstay.model.hotel;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name; // Optional: to store image metadata like name

    @Lob
    @Column(name = "data")
    private byte[] data; // Storing the image data as a binary array

    @ManyToOne
    @JoinColumn(name = "hotel_id")
    private Hotel hotel;

    @ManyToOne
    @JoinColumn(name = "room_id")
    private Room room;

    public Image(String name, byte[] data, Hotel hotel) {
        this.name = name;
        this.data = data;
        this.hotel = hotel;
    }

    public Image(String name, byte[] data, Room room) {
        this.name = name;
        this.data = data;
        this.room = room;
    }
}
