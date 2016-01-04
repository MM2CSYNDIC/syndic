package fr.upond.syndic.repository.user;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.upond.syndic.repository.IDao;
import fr.upond.syndic.security.model.User;

/**
 * 
 * @author Lyes KHERBICHE
 *
 */
public class UserDaoImpl implements IDao<User> {
	
	private static final Log logger = LogFactory.getLog(UserDaoImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<User> get(User user) {
		logger.info("===== In UserDaoImpl get =====");
	    List<User> list = new ArrayList<User>();
	    user = (User) sessionFactory.getCurrentSession().get(User.class, user.getUserName());
	    list.add(user);
	    return  list;
	}

	@Override
	public void put(User obj) {
		logger.info("===== Insert User =====");
		this.sessionFactory.getCurrentSession().save(obj);
	}

	@Override
	public void delete(User obj) {
		
		logger.info("===== In UserDaoImpl delete =====");
		logger.info(((User)sessionFactory.getCurrentSession().get(User.class, "alex")).getPassWord());
		
	}

	@Override
	public void upDate(User obj) {
		// to implement
	}

}
