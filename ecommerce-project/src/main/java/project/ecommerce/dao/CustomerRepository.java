package project.ecommerce.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import project.ecommerce.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
}
