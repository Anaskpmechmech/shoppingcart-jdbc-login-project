package org.dxc.shoppingcart.model;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="product")
public class Product {
	@Id
	@Column(name="productid")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int productId;
	@Column(name="productname")
	private String productName;
	@Column(name="quantity")
	private int quantity;
	private double price;
	private float discount;
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName
				+ ", quantity=" + quantity + ", price=" + price + ", discount=" + discount + "]";
	}

}
