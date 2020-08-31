package org.dxc.shoppingcart.controll;


import org.dxc.shoppingcart.model.Product;
import org.dxc.shoppingcart.model.User;
import org.dxc.shoppingcart.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@Autowired
	ProductController productControll;
	
	@Autowired
	private UserService userService;

	@GetMapping(value = "/login")
	public String showIndexPage(@ModelAttribute User user,ModelMap map) {
		map.addAttribute("fuck","fucjcjc");
		return "index";
	}

	@GetMapping(value = "/register")
	public String showRegisterPage(@ModelAttribute User user) {
		return "register";
	}

	@PostMapping("/registeruser")
	public String registerUser(@ModelAttribute User user, BindingResult result,ModelMap map) {
		if (result.hasErrors())
			return "redirect:/register";
		else
			userService.registerUser(user);
		return "redirect:/login";
	}
	@PostMapping("/validate")
	public String validUser(@ModelAttribute User user,ModelMap map) {
		User result=userService.validateUser(user);
		Product product=null;
		if(result!=null) {
			if(result.getRole().equalsIgnoreCase("user")) return productControll.showUserProductPage(map);
			else if(result.getRole().equalsIgnoreCase("admin")) return productControll.showAdminProductPage(product, map);
		}
		return "redirect:/login";
	}
	@RequestMapping("/logout")
	public String logout(@ModelAttribute User user) {
		productControll.emptyCart();
		return "redirect:/login";
		
	}
}
