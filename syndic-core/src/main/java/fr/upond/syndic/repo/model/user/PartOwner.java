package fr.upond.syndic.repo.model.user;


import fr.upond.syndic.repo.model.common.Address;
import fr.upond.syndic.repo.model.common.PollingPartOwner;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by Manel on 15/12/2015.
 */
@SuppressWarnings("serial")
public class PartOwner extends UserData {

    private int numberOfLot;
    private Set<PollingPartOwner> pollingPartOwner = new HashSet<PollingPartOwner>(0);

    public PartOwner(){
        super();
    }

    public PartOwner(int nombreLot) {
        this.numberOfLot = nombreLot;
    }

    public PartOwner(String firstName, String lastName, String phone, String mobile, String email, Address address, String type, int nombreLot) {
        super(firstName, lastName, phone, mobile, email, address, type);
        this.numberOfLot = nombreLot;
    }

	public int getNumberOfLot() {
		return numberOfLot;
	}

	public void setNumberOfLot(int numberOfLot) {
		this.numberOfLot = numberOfLot;
	}

	public Set<PollingPartOwner> getPollingPartOwner() {
		return pollingPartOwner;
	}

	public void setPollingPartOwner(Set<PollingPartOwner> pollingPartOwner) {
		this.pollingPartOwner = pollingPartOwner;
	}

    @Override
    public boolean equals(Object o) {
        return false;
    }


}
