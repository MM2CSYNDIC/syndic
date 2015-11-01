package fr.upond.syndic.repository;

import java.util.List;

/**
 * 
 * @author LYES KHERBICHE
 *
 * @param <T>
 */
public interface IDao<T> {
	
	List<T> get(T obj);
	
	void put(T obj);
	
	void delete(T obj);
	
	void upDate(T obj);

}
