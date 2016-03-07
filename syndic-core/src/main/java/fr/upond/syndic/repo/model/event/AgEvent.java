package fr.upond.syndic.repo.model.event;

import fr.upond.syndic.repo.model.common.Condo;
import fr.upond.syndic.repo.model.common.Polling;

import java.util.Set;

/**
 * 
 * @author Lyes KHERBICHE
 *
 */
@SuppressWarnings("serial")
public class AgEvent extends Event {
	
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

    @Override
    public boolean equals(Object o) {
        return false;
    }
	
	
}
