package project.ecommerce.dto;

import lombok.Data;
import project.ecommerce.entity.Address;
import project.ecommerce.entity.Customer;
import project.ecommerce.entity.Order;
import project.ecommerce.entity.OrderItem;

import java.util.Set;

@Data
public class Purchase {
    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;
}
