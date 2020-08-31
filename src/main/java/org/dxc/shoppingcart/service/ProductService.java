package org.dxc.shoppingcart.service;

import java.util.List;

import org.dxc.shoppingcart.model.Product;

public interface ProductService {
	
	public List<Product> getAllProduct();
	public void deleteProduct(int id);
	public void addNewProduct(Product product);
	public Product getProductById(int id);
	

}
