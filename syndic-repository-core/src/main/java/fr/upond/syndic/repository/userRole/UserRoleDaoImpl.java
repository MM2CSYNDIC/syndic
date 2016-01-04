package fr.upond.syndic.repository.userRole;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.upond.syndic.repository.IDao;
import fr.upond.syndic.security.model.UserRole;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
public class UserRoleDaoImpl implements IDao<UserRole> {
	
	private static final Log logger = LogFactory.getLog(UserRoleDaoImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<UserRole> get(UserRole obj) {
		
		return new ArrayList<UserRole>();
	}

	@Override
	public void put(UserRole obj) {
		logger.info("===== Insert UserRole =====");
		this.sessionFactory.getCurrentSession().save(obj);
	}

	@Override
	public void delete(UserRole obj) {
		// to implement	
	}

	@Override
	public void upDate(UserRole obj) {
		// to implement	
	}

}
