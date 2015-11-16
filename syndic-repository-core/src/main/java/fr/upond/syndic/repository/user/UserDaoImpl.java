package fr.upond.syndic.repository.user;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import fr.upond.syndic.repository.IDao;
import fr.upond.syndic.security.model.User;

/**
 * 
 * @author Lyes KHERBICHE
 *
 */
public class UserDaoImpl implements IDao<User> {
	
	private static final Log logger = LogFactory.getLog(UserDaoImpl.class);
	
	//@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> get(User obj) {
		 Query query = sessionFactory.getCurrentSession().createQuery("from USERS where USERNAME = :username");
	     query.setParameter("username", obj.getUserName());
	     return  query.list();
	}

	@Override
	public void put(User obj) {
		//this.dataSource.getConnection()
		this.sessionFactory.getCurrentSession().save(obj);
	}

	@Override
	public void delete(User obj) {
		logger.info("===== In UserDaoImpl =====");//select * from alf_qname;
		Query query = sessionFactory.getCurrentSession().createQuery("from alf_qname");
	    logger.info(query.toString());
		
	}

	@Override
	public void upDate(User obj) {
		
		
	}

}
