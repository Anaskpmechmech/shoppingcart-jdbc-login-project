package org.dxc.shoppingcart.service;

import org.dxc.shoppingcart.model.User;

public interface UserService {
	
	public void registerUser(User user);
	public User validateUser(User user);

}
