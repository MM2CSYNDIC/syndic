
package org.syndic.client.web.users.controller;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import fr.upond.syndic.repo.model.user.Gardien;
import fr.upond.syndic.repo.model.user.UserData;
import fr.upond.syndic.security.model.User;
import fr.upond.syndic.security.model.UserRole;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.view.RedirectView;
import org.syndic.client.web.command.UserCommand;
import org.syndic.client.web.validator.UserValidator;

import fr.upond.syndic.service.IManager;


/**
 *
 * @author LYES KHERBICHE
 *
 */
@Controller
//@RequestMapping("/user")
public class UserController {

	private static final Log logger = LogFactory.getLog(UserController.class);

	@Autowired
	private IManager<Object> manager;
	@Autowired
	private UserValidator userValidator;


	@RequestMapping(value = "/getformadduser", method = RequestMethod.GET)
	public String getFormAddUser(Map<String,Object> model) {
		logger.info("==== IN UserController =====");
		model.put("userCommand", new UserCommand());
		return "addUserPage";
	}

	@RequestMapping(value = "/listuser", method = RequestMethod.GET)
	public String listUser(ModelMap model) {
		for (Object user : this.manager.get(new UserData()) ) {
			logger.info("user (name) "+((UserData)user).getLastName());
		}
		model.addAttribute("listuser", this.manager.get(new UserData()));

		return "listUserPage";
	}

	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public RedirectView addUser(@ModelAttribute("userCommand") UserCommand userCommand, BindingResult result) {
		logger.info("== uri: /adduser ==");
		logger.info("type utiisateur " + userCommand.getTypeUser());


		User user 	= new User(userCommand.getUserName(), userCommand.getPassWord(), true);
		UserData g 	= new UserData(userCommand.getFirstName(), userCommand.getLastName(), userCommand.getPhone(), userCommand.getMobile(), userCommand.getEmail(), userCommand.getZipCode(), userCommand.getCity(), userCommand.getAddress(), user, userCommand.getTypeUser());
		manager.add(user);
		manager.add(g);
		/*
		UserRole lyesRole = new UserRole("ROLE_USER");
		lyesRole.setUser(lyes);
		Set<UserRole> set = new HashSet<UserRole>();
		set.add(lyesRole);
		lyes.setUserRole(set);
		this.manager.add(lyes);
		*/
		logger.info("Login " + userCommand.getUserName());
		logger.info("PWD "+userCommand.getPassWord());

		logger.info("nom " + userCommand.getFirstName());
		logger.info("prenom "+userCommand.getLastName());
		logger.info("tel "+userCommand.getPhone());
		logger.info("mobile " + userCommand.getMobile());
		logger.info("email "+userCommand.getEmail());

		//this.userValidator.validate(userCommand, result);
		if(result.hasErrors()) {
			return new RedirectView("getformadduser.ldz");
		} else {
			return new RedirectView("adminUser.ldz");
		}
	}



}
