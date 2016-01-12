package fr.upond.syndic.service.common;

import java.util.List;

import fr.upond.syndic.repo.model.BaseObject;
import fr.upond.syndic.repo.model.common.Condo;
import fr.upond.syndic.repo.model.common.Provider;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import fr.upond.syndic.repo.model.event.Event;
import fr.upond.syndic.repository.IDao;
import fr.upond.syndic.security.model.User;
import fr.upond.syndic.security.model.UserRole;
import fr.upond.syndic.service.IManager;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@Transactional
public class Manager implements IManager<BaseObject> {
	
	private static final Log logger = LogFactory.getLog(Manager.class);
	
	@Autowired
	private IDao<BaseObject> dao;
	
	public void setDao(IDao<BaseObject> dao) {
		this.dao = dao;
	}

	@Override
	public List<BaseObject> get(BaseObject obj) {
		return dao.get(obj);
	}

	@Override
	public void add(BaseObject obj) {
		
		logger.info("==== Insert "+obj.getClass()+" ====");
		
		if(obj.getClass().equals(User.class)) {
			this.dao.put(obj);
			for(UserRole ur : ((User)obj).getUserRole()) {
				this.dao.put(ur);
			}
		}
		if(obj.getClass().equals(UserRole.class)) {
			this.dao.put(obj);
		}
		if(obj.getClass().equals(Event.class)) {
			this.dao.put(obj);
		}
		if(obj.getClass().equals(Condo.class)) {
			this.dao.put(obj);
		}
		if(obj.getClass().equals(Provider.class)) {
			this.dao.put(obj);
		}
		
	}

	@Override
	public void delete(BaseObject obj) {
		logger.info("== Delete "+obj.getClass()+" ==");
		this.dao.delete(obj);
	}

}
