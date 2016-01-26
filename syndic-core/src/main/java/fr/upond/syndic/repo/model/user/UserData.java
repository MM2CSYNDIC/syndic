package fr.upond.syndic.repo.model.user;

import fr.upond.syndic.repo.model.BaseObject;
import fr.upond.syndic.security.model.User;
/**
 * 
 * @author LYES KHERBICHE
 *
 */
@SuppressWarnings("serial")
public class UserData extends BaseObject {


    private String type;
	private String firstName;
	private String lastName;
	private String phone;
	private String mobile;
	private String email;
	private String address;
	private String zipcode;
	private String city;
	private User users;
    private int id;

	public UserData(String firstName, String lastName, String phone, String mobile, String email,String zipcode,String city,
			String address, User users, String type) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.phone = phone;
		this.mobile = mobile;
		this.email = email;
		this.address = address;
		this.users = users;
        this.type=type;
		this.type=zipcode;
		this.type=city;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
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
