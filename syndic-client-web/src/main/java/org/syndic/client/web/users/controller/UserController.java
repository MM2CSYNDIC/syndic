
package org.syndic.client.web.users.controller;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
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

	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("userCommand") UserCommand userCommand, BindingResult result) {
		logger.info("== uri: /adduser ==");
		/*User lyes = new User(userCommand.getUserName(), userCommand.getPassWord(), true);
		UserRole lyesRole = new UserRole("ROLE_USER");
		lyesRole.setUser(lyes);
		Set<UserRole> set = new HashSet<UserRole>();
		set.add(lyesRole);
		lyes.setUserRole(set);
		this.manager.add(lyes);*/
		logger.info("Login " + userCommand.getUserName());
		logger.info("PWD "+userCommand.getPassWord());

		logger.info("type utiisateur " + userCommand.getTypeUser());
		logger.info("nom " + userCommand.getFirstName());
		logger.info("prenom "+userCommand.getLastName());
		logger.info("tel "+userCommand.getPhone());
		logger.info("mobile " + userCommand.getMobile());
		logger.info("email "+userCommand.getEmail());

		logger.info("num " + userCommand.getNumAddress());
		logger.info("typeAdr "+userCommand.getTypeAddress());
		logger.info("nom  " + userCommand.getStreet());
		logger.info("prenom "+userCommand.getCity());
		logger.info("nom " + userCommand.getZipCode());
		logger.info("prenom "+userCommand.getCountry());
		logger.info("nom " + userCommand.getPlaceName());

		this.userValidator.validate(userCommand, result);
		if(result.hasErrors()) {
			return "addUserPage";
		} else {
			return "welcomePage";
		}
	}



}
