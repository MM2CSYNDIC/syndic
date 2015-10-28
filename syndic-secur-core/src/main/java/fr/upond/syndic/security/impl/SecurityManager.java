package fr.upond.syndic.security.impl;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import fr.upond.syndic.security.ISecurityManager;
import fr.upond.syndic.security.model.User;
import fr.upond.syndic.security.model.UserRole;

/**
 * 
 * @author Lyes Kherbiche
 *
 */
public class SecurityManager implements ISecurityManager {

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = new User(username,null,false);
		UserRole userRole = new UserRole(user, null);
		return null;
	}

}
