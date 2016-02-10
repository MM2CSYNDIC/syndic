package fr.upond.syndic.repo.model.common;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import fr.upond.syndic.repo.model.BaseObject;
/**
 * 
 * @author LYES KHERBICHE
 *
 */
@SuppressWarnings("serial")
public class Address extends BaseObject {
	
	private static final Log logger = LogFactory.getLog(Address.class);
	
	private int id;
	private String numAdress;
	private String typeAddress;
	private String street;
	private String city;
	private String zipCode;
	private String country;
	private String placeName;

	public int getId() {
	    return id;
	}
	
	public void setId( int id ) {
	    this.id = id;
	}
	
	public String getNumAdress() {
		return numAdress;
	}

	public void setNumAdress(String numAdress) {
		this.numAdress = numAdress;
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

	/**
	 * 
	 * @return
	 */
	@Override
	public String toString() {
		return "";
	}

	/**
	 * 
	 * @param o refers the CONDO Address
	 * @return
	 */
	@Override
	public boolean equals(Object o) {
		
		if (this == o) 
			return true;
		
	    if (o == null || getClass() != o.getClass()) 
	    	return false;
	    
	    Address address = (Address) o;
	    String str1 = typeAddress.trim()+street.trim()+city.trim()+zipCode.trim()+country.trim();
	    String str2 = address.getTypeAddress().trim()+address.getStreet().trim()+address.getCity().trim()
	    		+address.getZipCode().trim()+address.getCountry().trim();
	    if(str1.equalsIgnoreCase(str2)) {
	    	if(address.getNumAdress().trim().contains(",")) {
	    		String[] output = address.getNumAdress().split(",\\s");
	    		logger.info("output[0] "+output[0]+" output[1] "+output[1]);
	    		if(Integer.parseInt(numAdress.trim()) >= Integer.parseInt(output[0]) && Integer.parseInt(numAdress.trim()) <= Integer.parseInt(output[1])) {
	    			return true;
	    		}
	    	} else { // Not a composite Num Address
	    		if(Integer.parseInt(numAdress.trim()) == Integer.parseInt(address.getNumAdress().trim())) {
	    			return true ;
	    		}
	    	}
	    }
		return false;
	}

	@Override
	public int hashCode() {
		return 0;
	}

	public Address(String numAdress, String typeAddress, String street, String city, String zipCode, String country,
			String placeName) {
		super();
		this.numAdress = numAdress;
		this.typeAddress = typeAddress;
		this.street = street;
		this.city = city;
		this.zipCode = zipCode;
		this.country = country;
		this.placeName = placeName;
	}

	public Address() {
		super();
	}

}
