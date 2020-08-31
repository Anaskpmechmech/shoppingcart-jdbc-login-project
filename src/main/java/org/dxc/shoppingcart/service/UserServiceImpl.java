package org.dxc.shoppingcart.service;

import org.dxc.shoppingcart.model.User;
import org.dxc.shoppingcart.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public void registerUser(User user) {
		userRepository.save(user);

	}

	@Override
	public User validateUser(User user) {
		User result = null;
		User u = userRepository.findByUserName(user.getUserName());
		if ((u != null) && (u.getPassword().equals(user.getPassword())))
			result = u;
		return result;

	}

}
