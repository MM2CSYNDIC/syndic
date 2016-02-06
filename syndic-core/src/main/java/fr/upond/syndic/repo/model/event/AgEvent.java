package fr.upond.syndic.repo.model.event;

import java.util.Set;

import fr.upond.syndic.repo.model.common.Condo;
import fr.upond.syndic.repo.model.common.Question;

/**
 * 
 * @author Lyes KHERBICHE
 *
 */
@SuppressWarnings("serial")
public class AgEvent extends Event {
	
	private Set<Question> questions;

	public AgEvent() {
	}

	public AgEvent(String eventName, String typeEvent, String dateEvent, String descEvent, Set<Condo> condo, Set<Question> questions) {
		super(eventName, typeEvent, dateEvent, descEvent, condo);
		this.questions = questions;
	}

	public Set<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(Set<Question> questions) {
		this.questions = questions;
	}
	
	
}
