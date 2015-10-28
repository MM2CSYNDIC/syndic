package fr.upond.syndic.security.impl;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import fr.upond.syndic.security.ISecurityManager;

/**
 * 
 * @author Lyes Kherbiche
 *
 */
public class SecurityManager implements ISecurityManager {

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		return null;
	}

}
