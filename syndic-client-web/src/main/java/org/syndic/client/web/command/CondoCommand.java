package org.syndic.client.web.command;

/**
 * Created by Manel on 14/12/2015.
 */
public class CondoCommand {

    private String name;
    private String numAddressStart;
    private String numAddressEnd;
    private String typeAddress;
    private String street;
    private String zipcode;
    private String placeName;
    private String city;
    private String country;
    private String codeLot;
    private String typeLot;
    private String floorLot;
    private String areaLot;
    private String part;
    private String area;

    public CondoCommand(){
        super();
    }

    public CondoCommand(String name, String numAddressStart, String numAddressEnd, String typeAddress, String street,
			String zipcode, String placeName, String city, String country, String codeLot, String typeLot, String floorLot,
			String areaLot, String part, String area) {
		super();
		this.name = name;
		this.numAddressStart = numAddressStart;
		this.numAddressEnd = numAddressEnd;
		this.typeAddress = typeAddress;
		this.street = street;
		this.zipcode = zipcode;
		this.placeName = placeName;
		this.city = city;
		this.country = country;
		this.codeLot = codeLot;
		this.typeLot = typeLot;
		this.floorLot = floorLot;
		this.areaLot = areaLot;
		this.part = part;
		this.area = area;
	}

	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumAddressStart() {
		return numAddressStart;
	}

	public void setNumAddressStart(String numAddressStart) {
		this.numAddressStart = numAddressStart;
	}

	public String getNumAddressEnd() {
		return numAddressEnd;
	}

	public void setNumAddressEnd(String numAddressEnd) {
		this.numAddressEnd = numAddressEnd;
	}

	public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
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

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getPlaceName() {
        return placeName;
    }

    public void setPlaceName(String placeName) {
        this.placeName = placeName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getTypeLot() {
        return typeLot;
    }

    public void setTypeLot(String typeLot) {
        this.typeLot = typeLot;
    }

    public String getFloorLot() {
        return floorLot;
    }

    public void setFloorLot(String floorLot) {
        this.floorLot = floorLot;
    }

    public String getAreaLot() {
        return areaLot;
    }

    public void setAreaLot(String areaLot) {
        this.areaLot = areaLot;
    }

    public String getPart() {
        return part;
    }

    public void setPart(String part) {
        this.part = part;
    }
    public String getCodeLot() {
        return codeLot;
    }

    public void setCodeLot(String codeLot) {
        this.codeLot = codeLot;
    }

}
