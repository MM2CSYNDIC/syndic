package fr.upond.syndic.repository.event;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.upond.syndic.repository.IDao;
/**
 * 
 * @author LYES KHERBICHE
 *
 */

/**
 * @deprecated (In order to use a generic DAO)
 */
@Deprecated
public class EventDaoImpl implements IDao<Object> {
	
	private static final Log logger = LogFactory.getLog(EventDaoImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Object> get(Object obj) {
		return new ArrayList<Object>();
	}

	@Override
	public void put(Object obj) {
		logger.info("===== Insert Event =====");
		this.sessionFactory.getCurrentSession().save(obj);
	}

	@Override
	public void delete(Object obj) {
		// to implement	
	}

	@Override
	public void upDate(Object obj) {
		// to implement
	}

}
