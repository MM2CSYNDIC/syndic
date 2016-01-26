package fr.upond.syndic.repo.model.common;

import fr.upond.syndic.repo.model.BaseObject;

import java.util.Set;
import fr.upond.syndic.repo.model.common.Lot;

/**
 *
 * @author LYES KHERBICHE
 *
 */
@SuppressWarnings("serial")
public class Condo extends BaseObject {

	private int id;
	private String name;
	private String zipcode;
	private String address;
	private String city;
	private double area;
	private Set<Lot> lot;

	public Condo() {
		super();
	}

	public Condo(String name, double area, String address, String zipcode, String city) {
		super();
		this.name 	= name;
		this.area	=area;
		this.address = address;
		this.zipcode = zipcode;
		this.city 		= city;
	}
	public double getArea() {
		return area;
	}

	public void setArea(double area) {
		this.area = area;
	}

	public String getAddress() {return address;}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Lot> getLot() {
		return lot;
	}

	public void setLot(Set<Lot> lot) {
		this.lot = lot;
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

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}


}