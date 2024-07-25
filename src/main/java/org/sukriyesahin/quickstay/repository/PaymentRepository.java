package org.sukriyesahin.quickstay.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.sukriyesahin.quickstay.model.reservation.Payment;

public interface PaymentRepository extends JpaRepository<Payment, Long> {
}
