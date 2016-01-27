package fr.upond.syndic.repo.model.common;

import fr.upond.syndic.repo.model.BaseObject;
/**
 * 
 * @author LYES KHERBICHE
 *
 */

@SuppressWarnings("serial")
public class Question extends BaseObject {
	
	private int id;
	private String quest;

	public Question() {
		super();
	}

	public Question(String quest) {
		super();
		this.quest = quest;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQuest() {
		return quest;
	}

	public void setQuest(String quest) {
		this.quest = quest;
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
