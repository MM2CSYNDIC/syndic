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
    private double area;
    private Address address;
    private Set<Lot> lot;

	
	public Condo() {
		super();
	}

	public Condo(String name, double area, Address address) {
		super();
		this.name = name;
		this.area=area;
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


    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }
    public Set<Lot> getLot() {
        return lot;
    }

    public void setLot(Set<Lot> lot) {
        this.lot = lot;
    }
    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
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
