package org.syndic.client.web.users.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.upond.syndic.security.model.User;
import fr.upond.syndic.service.IManager;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Log logger = LogFactory.getLog(UserController.class);
	
	@Autowired
	private IManager<User> userManager;
	
	public void setUserManager(IManager<User> userManager) {
		this.userManager = userManager;
	}
	
	
	@RequestMapping(value = "/getformadduser", method = RequestMethod.GET)
	public String getFormAddUser() {
		logger.info("==== IN UserController =====");
		User user = new User("alex", "", false);
		for(User u : this.userManager.get(user)) {
			logger.info("userName: "+u.getUserName());
			logger.info("password: "+u.getPassWord());
		}
		return "welcomePage";
	}

}
