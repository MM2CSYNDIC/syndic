package fr.upond.syndic.service.event;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import fr.upond.syndic.repository.IDao;
import fr.upond.syndic.service.IManager;
/**
 * 
 * @author LYES KHERBICHE
 *
 */
@Transactional
@Deprecated
public class EventManager implements IManager<Object> {
	
	private static final Log logger = LogFactory.getLog(EventManager.class);
	
	@Autowired
	private IDao<Object> eventDao;
	
	public void setEventDao(IDao<Object> eventDao) {
		this.eventDao = eventDao;
	}

	@Override
	public List<Object> get(Object obj) {
		return null;
	}

	@Override
	public void add(Object obj) {
		logger.info("=== Insert Event ===");
		eventDao.put(obj);
	}

	@Override
	public void delete(Object obj) {

	}

}
