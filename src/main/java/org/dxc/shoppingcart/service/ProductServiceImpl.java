package org.dxc.shoppingcart.service;

import java.util.List;

import org.dxc.shoppingcart.model.Product;
import org.dxc.shoppingcart.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepository productRepository;

	@Override
	public List<Product> getAllProduct() {
		return productRepository.findAll();
	}

	@Override
	public void deleteProduct(int id) {
		productRepository.deleteById(id);
	}

	@Override
	public void addNewProduct(Product product) {
		productRepository.save(product);

	}

	@Override
	public Product getProductById(int id) {
		return productRepository.findById(id).get();
	}

}
