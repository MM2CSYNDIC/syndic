package fr.upond.syndic.repo.data.hierarchicalList;

/**
 * 
 * @author Lyes Kherbiche
 *
 * @param <T> Immeuble, Appart, Studio ... 
 */
public interface CompositeDataItem<T> {
	
	Integer getDepthLevel();
	
	T getParent();
	
	void setParent(T parent);

}
