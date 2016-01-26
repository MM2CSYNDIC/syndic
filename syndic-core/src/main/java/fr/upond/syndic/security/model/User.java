package fr.upond.syndic.security.model;

import java.util.HashSet;
import java.util.Set;

import fr.upond.syndic.repo.model.BaseObject;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@SuppressWarnings("serial")
public class User extends BaseObject {
	
	private String userName;
	private String passWord;
	private boolean enabled;
	private Set<UserRole> userRole = new HashSet<UserRole>(0);
	
	@SuppressWarnings("unused")
	protected User() {}
	
	public User(String userName, String passWord, boolean enabled) {
		super();
		this.userName = userName;
		this.passWord = passWord;
		this.enabled = enabled;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Set<UserRole> getUserRole() {
		return userRole;
	}

	public void setUserRole(Set<UserRole> userRole) {
		this.userRole = userRole;
	}

	@Override
	public String toString() {
		return null;
	}

	@Override
	public boolean equals(Object o) {
		return false;
	}

	@Override
	public int hashCode() {
		return 0;
	}
	
	

}
