package org.syndic.client.web.command;

import java.lang.String;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
public class UserCommand {
	/* identifiants */
	private String userName;
	private String passWord;
	private String confirmation;
	/* info utilisateur */
	private String typeUser;
	private String firstName;
	private String lastName;
	private String phone;
	private String mobile;
	private String email;
	/* Adresse */
	private String numAddress;
	private String typeAddress;
	private String street;
	private String city;
	private String zipCode;
	private String country;
	private String placeName;


	public UserCommand() {
		super();
	}

	public UserCommand(String userName, String passWord, String confirmation, String typeUser, String firstName, String lastName,
			String phone, String mobile, String email, String numAddress, String typeAddress, String street,
			String city, String zipCode, String country, String placeName) {
		this.userName = userName;
		this.passWord = passWord;
		this.confirmation = confirmation;
		this.typeUser = typeUser;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phone = phone;
		this.mobile = mobile;
		this.email = email;
		this.numAddress = numAddress;
		this.typeAddress = typeAddress;
		this.street = street;
		this.city = city;
		this.zipCode = zipCode;
		this.country = country;
		this.placeName = placeName;
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

	public String getConfirmation() {
		return confirmation;
	}

	public void setConfirmation(String confirmation) {
		this.confirmation = confirmation;
	}

	public String getTypeUser() {
		return typeUser;
	}

	public void setTypeUser(String typeUser) {
		this.typeUser = typeUser;
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

	public String getNumAddress() {
		return numAddress;
	}

	public void setNumAddress(String numAddress) {
		this.numAddress = numAddress;
	}

	public String getTypeAddress() {
		return typeAddress;
	}

	public void setTypeAddress(String typeAddress) {
		this.typeAddress = typeAddress;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPlaceName() {
		return placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
}
