package fr.upond.syndic.security;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/**
 * 
 * @author Lyes Kherbiche
 *
 */
public interface ISecurityManager extends UserDetailsService {
	
	UserDetails loadUserByUsername(String username) throws UsernameNotFoundException;

}
