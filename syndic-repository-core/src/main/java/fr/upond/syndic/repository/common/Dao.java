package fr.upond.syndic.repository.common;

import java.util.ArrayList;
import java.util.List;

import fr.upond.syndic.repo.model.user.PartOwner;
import fr.upond.syndic.repo.model.user.UserData;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.upond.syndic.repo.model.BaseObject;
import fr.upond.syndic.repo.model.common.Polling;
import fr.upond.syndic.repo.model.common.PollingPartOwner;
import fr.upond.syndic.repo.model.event.AgEvent;
import fr.upond.syndic.repo.model.event.Event;
import fr.upond.syndic.repository.IDao;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
public class Dao implements IDao<BaseObject> {
	
	private static final Log logger = LogFactory.getLog(Dao.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BaseObject> get(BaseObject obj) {
		
		logger.info("== List: "+obj.getClass()+" ==");
        if (obj.getClass().equals(Event.class) && ((Event)obj).getEventName() != null) {
        	
        	List<BaseObject> list = new ArrayList<BaseObject>();
        	list.add((BaseObject) this.sessionFactory.getCurrentSession().get(Event.class, ((Event)obj).getEventName()));
        	return list; 	
        }
        if (obj.getClass().equals(AgEvent.class) && ((Event)obj).getEventName() != null) {
        	
    		List<BaseObject> list = new ArrayList<BaseObject>();
    		list.add((BaseObject) this.sessionFactory.getCurrentSession().get(AgEvent.class, ((AgEvent)obj).getEventName()));
    		return list; 	
        }
        if (obj.getClass().equals(Polling.class) && ((Polling)obj).getId() != null) {
        	
    		List<BaseObject> list = new ArrayList<BaseObject>();
    		list.add((BaseObject) this.sessionFactory.getCurrentSession().get(Polling.class, ((Polling)obj).getId()));
    		return list; 	
        }
		if (obj.getClass().equals(UserData.class) && ((UserData)obj).getLastName() != null) {
			
			List<BaseObject> list = new ArrayList<BaseObject>();
			list.add((BaseObject) this.sessionFactory.getCurrentSession().get(UserData.class, ((UserData)obj).getId()));
			return list;
		}
		if (obj.getClass().equals(PartOwner.class) && ((PartOwner)obj).getUsers() != null) {
			
			List<BaseObject> list = new ArrayList<BaseObject>();
			Query query = this.sessionFactory.getCurrentSession().createQuery("From PartOwner Where users = :usr");
			query.setParameter("usr", ((PartOwner)obj).getUsers());
			list = query.list();
			return list;
		}
		if (obj.getClass().equals(PollingPartOwner.class) && ((PollingPartOwner)obj).getPartOwner() != null) {
			
			List<BaseObject> list = new ArrayList<BaseObject>();
			Query query = this.sessionFactory.getCurrentSession().createQuery("From PollingPartOwner Where partOwner = :po");
			query.setParameter("po", ((PollingPartOwner)obj).getPartOwner());
			list = query.list();
			return list;
		}
		
    	return	this.sessionFactory.getCurrentSession().createCriteria(obj.getClass()).list();
	}

	@Override
	public void put(BaseObject obj) {		
		logger.info("== Insert: "+obj.getClass()+" ==");
		this.sessionFactory.getCurrentSession().save(obj);
	}

	@Override
	public void delete(BaseObject obj) {
		logger.info("== Delete: "+obj.getClass()+" ==");
		this.sessionFactory.getCurrentSession().delete(obj);
	}

	@Override
	public void upDate(BaseObject obj) {
		logger.info("== UpDate: "+obj.getClass()+" ==");
		this.sessionFactory.getCurrentSession().update(obj);
	}

}
