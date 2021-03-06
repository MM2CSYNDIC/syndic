package fr.upond.syndic.security.model;

import fr.upond.syndic.repo.model.BaseObject;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@SuppressWarnings("serial")
public class UserRole extends BaseObject {
	
	private Integer userRoleId;
	private User user;
	private String role;
	
	@SuppressWarnings("unused")
	private UserRole() {}

	public UserRole(Integer userRoleId, User user, String role) {
		super();
		this.userRoleId = userRoleId;
		this.user = user;
		this.role = role;
	}
	
	public UserRole(String role) {
		super();
		this.role = role;
	}
	
	public UserRole(User user, String role) {
		super();
		this.user = user;
		this.role = role;
	}

	public Integer getUserRoleId() {
		return userRoleId;
	}

	public void setUserRoleId(Integer userRoleId) {
		this.userRoleId = userRoleId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "";
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
