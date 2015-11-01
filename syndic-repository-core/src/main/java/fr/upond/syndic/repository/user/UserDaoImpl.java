package fr.upond.syndic.repository.user;

import java.util.List;

import org.hibernate.Query;
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
	
	@Autowired
	private SessionFactory sessionFactory;

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
		
		
	}

	@Override
	public void upDate(User obj) {
		
		
	}

}
