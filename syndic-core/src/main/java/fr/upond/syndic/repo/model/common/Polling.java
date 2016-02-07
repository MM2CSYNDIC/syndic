package fr.upond.syndic.repo.model.common;

import java.util.HashSet;
import java.util.Set;

import fr.upond.syndic.repo.model.BaseObject;

@SuppressWarnings("serial")
public class Polling extends BaseObject {
	
	private int id;
	private Set<Question> questions;
	private Set<PollingPartOwner> pollingPartOwner = new HashSet<PollingPartOwner>(0);
	private boolean close;
	
	
	public Polling() {
		super();
	}

	public Polling(Set<Question> questions) {
		super();
		this.questions = questions;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Set<Question> getQuestions() {
		return questions;
	}
	public void setQuestions(Set<Question> question) {
		this.questions = question;
	}

	public Set<PollingPartOwner> getPollingPartOwner() {
		return pollingPartOwner;
	}

	public void setPollingPartOwner(Set<PollingPartOwner> pollingPartOwner) {
		this.pollingPartOwner = pollingPartOwner;
	}

	public boolean isClose() {
		return close;
	}

	public void setClose(boolean isClose) {
		this.close = isClose;
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
