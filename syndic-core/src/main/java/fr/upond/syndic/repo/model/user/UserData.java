package fr.upond.syndic.repo.model.user;

import fr.upond.syndic.repo.model.BaseObject;
import fr.upond.syndic.repo.model.common.Address;
import fr.upond.syndic.security.model.User;
/**
 * 
 * @author LYES KHERBICHE
 *
 */
@SuppressWarnings("serial")
public class UserData extends BaseObject {
	
	private String firstName;
	private String lastName;
	private String phone;
	private String birthDay;
	private String mobile;
	private String email;
	private Address address;
	private User users;

	public UserData(String firstName, String lastName, String phone, String birthDay, String mobile, String email,
			Address address, User users) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.phone = phone;
		this.birthDay = birthDay;
		this.mobile = mobile;
		this.email = email;
		this.address = address;
		this.users = users;
	}

	public UserData() {
		super();
	}
	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
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
