package fr.upond.syndic.repo.model.common;

import fr.upond.syndic.repo.model.BaseObject;

@SuppressWarnings("serial")
public class Polling extends BaseObject {
	
	private int id;
	private String question;
	private int pour;
	private int contre;
	private int abstention;
	
	
	public Polling() {
		super();
	}

	public Polling(String question, int pour, int contre, int abstention) {
		super();
		this.question = question;
		this.pour = pour;
		this.contre = contre;
		this.abstention = abstention;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public int getPour() {
		return pour;
	}
	public void setPour(int pour) {
		this.pour = pour;
	}
	public int getContre() {
		return contre;
	}
	public void setContre(int contre) {
		this.contre = contre;
	}
	public int getAbstention() {
		return abstention;
	}
	public void setAbstention(int abstention) {
		this.abstention = abstention;
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
