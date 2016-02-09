package fr.upond.syndic.repo.model.event;

import java.util.Set;

import fr.upond.syndic.repo.model.common.Condo;
import fr.upond.syndic.repo.model.common.Polling;

/**
 * 
 * @author Lyes KHERBICHE
 *
 */
@SuppressWarnings("serial")
public class AgEvent extends Event {
	
	//private Set<Question> questions;
	private Polling polling;

	public AgEvent() {
	}

	public AgEvent(String eventName, String typeEvent, String dateEvent, String descEvent, Set<Condo> condo) {
		super(eventName, typeEvent, dateEvent, descEvent, condo);
	}

	public Polling getPolling() {
		return polling;
	}

	public void setPolling(Polling polling) {
		this.polling = polling;
	}
	
	
}
