package fr.upond.syndic.service;

import java.util.List;

/**
 * 
 * @author LYES KHERBICHE
 *
 * @param <T>
 */
public interface IManager<T> {
	
	List<T> get(T t);

}
