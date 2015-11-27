package fr.upond.syndic.service.event;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.transaction.annotation.Transactional;

import fr.upond.syndic.service.IManager;
/**
 * 
 * @author LYES KHERBICHE
 *
 */
@Transactional
public class EventManager implements IManager<Object> {
	
	private static final Log logger = LogFactory.getLog(EventManager.class);

	@Override
	public List<Object> get(Object obj) {
		return null;
	}

	@Override
	public void add(Object obj) {
		
	}

}
