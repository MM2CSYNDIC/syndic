package fr.upond.syndic.repo.model.event;

import java.util.Set;

import fr.upond.syndic.repo.model.BaseObject;
import fr.upond.syndic.repo.model.common.Building;

@SuppressWarnings("serial")
public class Event extends BaseObject {
	
	private String eventName;
	private String typeEvent;
	private String dateEvent;
	private String descEvent;
	private Set<Building> building;
	
	public Event() {
		super();
	}

	public Event(String eventName, String typeEvent, String dateEvent, String descEvent, Set<Building> building) {
		super();
		this.eventName = eventName;
		this.typeEvent = typeEvent;
		this.dateEvent = dateEvent;
		this.descEvent = descEvent;
		this.building = building;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getTypeEvent() {
		return typeEvent;
	}

	public void setTypeEvent(String typeEvent) {
		this.typeEvent = typeEvent;
	}

	public String getDateEvent() {
		return dateEvent;
	}

	public void setDateEvent(String dateEvent) {
		this.dateEvent = dateEvent;
	}

	public String getDescEvent() {
		return descEvent;
	}

	public void setDescEvent(String descEvent) {
		this.descEvent = descEvent;
	}

	public Set<Building> getBuilding() {
		return building;
	}

	public void setBuilding(Set<Building> building) {
		this.building = building;
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
