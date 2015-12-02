package org.syndic.client.web.home.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
		logger.info("=========== URI: /welcome ==========");
		userDao.delete(null);
		return "welcomePage";
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin() {
		logger.info("=========== URI: /admin ==========");
		return "adminPage";
	}

	@RequestMapping(value = "/sign", method = RequestMethod.GET)
	public String login(ModelMap model,@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		logger.info("=========== URI: /login ==========");
		if(error != null) {
			model.addAttribute("error", "Invalid username and password!");
		}
		if(logout != null) {
			model.addAttribute("msg", "You've been logged out successfully.");
		}
		return "loginPage";
	}
	
}
