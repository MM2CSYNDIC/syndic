package fr.upond.syndic.repository.common;

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
public class Dao implements IDao<Object> {
	
	private static final Log logger = LogFactory.getLog(Dao.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object> get(Object obj) {
		return null;
	}

	@Override
	public void put(Object obj) {		
		logger.info("===== Insert: "+obj.getClass()+" =====");
		this.sessionFactory.getCurrentSession().save(obj);
	}

	@Override
	public void delete(Object obj) {
	}

	@Override
	public void upDate(Object obj) {
	}

}
