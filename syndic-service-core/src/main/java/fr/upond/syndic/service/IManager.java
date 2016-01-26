package fr.upond.syndic.service;

import java.util.List;

/**
 * 
 * @author LYES KHERBICHE
 *
 * @param <T>
 */
public interface IManager<T> {
	
	List<T> get(T obj);
	
	void add(T obj);

	void delete(T obj);
}
