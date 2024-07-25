package org.sukriyesahin.quickstay.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.sukriyesahin.quickstay.model.user.Guest;

/**
 * Repository interface for accessing Guest data.
 * Provides CRUD operations for Guest entities.
 */
public interface GuestRepository extends JpaRepository<Guest, Long> {
}
