package fr.upond.syndic.repo.model.common;

import fr.upond.syndic.repo.model.BaseObject;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@SuppressWarnings("serial")
public class Building extends BaseObject {
	
	private int id;
	private String name;
	private Address address;
	
	
	
	public Building() {
		super();
	}

	public Building(String name, Address address) {
		super();
		this.name = name;
		this.address = address;
	}

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

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
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
