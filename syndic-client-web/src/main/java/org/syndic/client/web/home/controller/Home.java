package org.syndic.client.web.home.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.upond.syndic.repository.user.UserDaoImpl;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@Controller
@Transactional
public class Home {

	private static final Log logger = LogFactory.getLog(Home.class);
	
	@Autowired
	private UserDaoImpl userDao;
	
	
	
	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}


	
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcome() {
		logger.info("=========== In Home controoler ==========");
		userDao.delete(null);
		return "welcomePage";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "loginPage";
	}
	
}
