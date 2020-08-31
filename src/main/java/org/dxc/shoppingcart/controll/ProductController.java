package org.dxc.shoppingcart.controll;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.dxc.shoppingcart.model.Product;
import org.dxc.shoppingcart.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	private List<Product> cart = new ArrayList<Product>();
	double cost;
	
	public void emptyCart() {
		cart.clear();
	}

	@RequestMapping("/showadminpage")
	public String showAdminProductPage(@ModelAttribute Product product, ModelMap map) {
		map.addAttribute("product", productService.getAllProduct());
		return "admin-view";
	}

	@GetMapping("/showuserpage")
	public String showUserProductPage(ModelMap map) {
		map.addAttribute("products", new Product());
		map.addAttribute("availableproducts", productService.getAllProduct());
		map.addAttribute("cost", cost);
		map.addAttribute("cart", cart);
		return "user-view";
	}

	@RequestMapping("/delete")
	public String deleteProduct(@RequestParam("id") int id, ModelMap map) {
		productService.deleteProduct(id);
		return "redirect:/showadminpage";
	}

	@RequestMapping("/addproduct")
	public String showAddProductPage(@ModelAttribute Product product) {
		return "add-product";
	}

	@PostMapping("/addnewproduct")
	public String addNewProduct(@ModelAttribute Product product, ModelMap map) {
		productService.addNewProduct(product);
		return "redirect:/showadminpage";
	}

	@GetMapping("/update")
	public String updateProduct(@RequestParam int id, ModelMap map) {
		map.addAttribute("product", productService.getProductById(id));
		return "add-product";
	}

	@PostMapping("/addtocart")
	public String addtoCart(@ModelAttribute("products") Product product, ModelMap map) {
		Product p = productService.getProductById(product.getProductId());
		int quantity = product.getQuantity();
		if (p.getQuantity() >= quantity) {
			cart.add(product);
			cost = cost + (quantity * p.getPrice()) - ((quantity * p.getPrice()) * p.getDiscount() / 100);
			p.setQuantity(p.getQuantity() - quantity);
			productService.addNewProduct(p);
		}
		return "redirect:/showuserpage";
	}

	@RequestMapping("/deletefromcart")
	public String deleteFromCart(@RequestParam int id, @RequestParam int quantity) {
		Iterator<Product> iter = cart.iterator();
		while(iter.hasNext()) {
			Product p = iter.next();
			if ((p.getProductId() == id)&&(p.getQuantity()==quantity) ) {
				cost=cost-(quantity * p.getPrice()) + ((quantity * p.getPrice()) * p.getDiscount() / 100);
				iter.remove();
			}
		}
		return "redirect:/showuserpage";
	}
}
