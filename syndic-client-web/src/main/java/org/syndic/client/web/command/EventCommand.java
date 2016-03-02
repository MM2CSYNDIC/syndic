package org.syndic.client.web.command;

import org.springframework.util.AutoPopulatingList;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
public class EventCommand {
	
	private String eventName;
	private String typeEvent;
	private String dateEvent;
	private String descEvent;
	@SuppressWarnings("rawtypes")
	private AutoPopulatingList questions = null;
	@SuppressWarnings("rawtypes")
	private AutoPopulatingList condoId;
	
	public EventCommand() {
		super();
	}

	public EventCommand(String eventName, String typeEvent, String dateEvent, String descEvent) {
		super();
		this.eventName = eventName;
		this.typeEvent = typeEvent;
		this.dateEvent = dateEvent;
		this.descEvent = descEvent;
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

	@SuppressWarnings("rawtypes")
	public AutoPopulatingList getQuestions() {
		return questions;
	}

	@SuppressWarnings("rawtypes")
	public void setQuestions(AutoPopulatingList questions) {
		this.questions = questions;
	}

	@SuppressWarnings("rawtypes")
	public AutoPopulatingList getCondoId() {
		return condoId;
	}

	@SuppressWarnings("rawtypes")
	public void setCondoId(AutoPopulatingList condoId) {
		this.condoId = condoId;
	}
	
	

}
