package fr.upond.syndic.repo.model.common;

import fr.upond.syndic.repo.model.BaseObject;
import fr.upond.syndic.repo.model.user.PartOwner;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@SuppressWarnings("serial")
public class PollingPartOwner extends BaseObject {
	
	private int id;
	private Polling polling;
	private PartOwner partOwner;
	private boolean isPoll;
	
	
	public PollingPartOwner() {
		super();
	}
	

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public Polling getPolling() {
		return polling;
	}


	public void setPolling(Polling polling) {
		this.polling = polling;
	}


	public PartOwner getPartOwner() {
		return partOwner;
	}


	public void setPartOwner(PartOwner partOwner) {
		this.partOwner = partOwner;
	}


	public boolean isPoll() {
		return isPoll;
	}


	public void setPoll(boolean isPoll) {
		this.isPoll = isPoll;
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
