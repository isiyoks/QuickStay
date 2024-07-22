package org.sukriyesahin.quickstay.model.user;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Guest {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull(message = "First name is required.")
    @Size(min = 1, max = 20, message = "First name must be between 1 and 20 characters.")
    @Column(nullable = false)
    private String firstName;

    @NotNull(message = "Last name is required.")
    @Size(min = 1, max = 20, message = "Last name must be between 1 and 20 characters.")
    @Column(nullable = false)
    private String lastName;

    @Column(nullable = false)
    private boolean isChild;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;  // User who made the reservation

    public String getFormattedFullName() {
        return capitalize(firstName) + " " + capitalize(lastName);
    }

    private String capitalize(String word) {
        if (word == null || word.isEmpty()) {
            return word;
        }
        return word.substring(0, 1).toUpperCase() + word.substring(1).toLowerCase();
    }

}
