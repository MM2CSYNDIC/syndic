package org.syndic.client.web.users.controller;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.syndic.client.web.command.UserCommand;



import fr.upond.syndic.security.model.User;
import fr.upond.syndic.security.model.UserRole;
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
	
	public void setUserManager(IManager<Object> userManager) {
		this.manager = userManager;
	}
	
	
	@RequestMapping(value = "/getformadduser", method = RequestMethod.GET)
	public String getFormAddUser(Map<String,Object> model) {
		logger.info("==== IN UserController =====");
		/*User user = new User("alex", "", false);
		for(User u : this.userManager.get(user)) {
			logger.info("userName: "+u.getUserName());
			logger.info("password: "+u.getPassWord());
		}*/
		model.put("userCommand", new UserCommand());
		return "addUserPage";
	}
	
	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("userCommand") UserCommand userCommand) {
		logger.info("==== Insert User =====");
		/*User lyes = new User(userCommand.getUserName(), userCommand.getPassWord(), true);
		UserRole lyesRole = new UserRole("ROLE_USER");
		lyesRole.setUser(lyes);
		Set<UserRole> set = new HashSet<UserRole>();
		set.add(lyesRole);
		lyes.setUserRole(set);
		this.manager.add(lyes);*/

		/*
		* Identifians de connexion
		* */
		logger.info("Login " + userCommand.getUserName());
		logger.info("PWD "+userCommand.getPassWord());
		/*
		* Informations utilisateur
		* */
		logger.info("type utiisateur " + userCommand.getTypeUser());
		logger.info("nom " + userCommand.getFirstName());
		logger.info("prenom "+userCommand.getLastName());
		logger.info("tel "+userCommand.getPhone());
		logger.info("mobile " + userCommand.getMobile());
		logger.info("email "+userCommand.getEmail());
		/*
		* Adresse
		* */
		logger.info("num " + userCommand.getNumAddress());
		logger.info("typeAdr "+userCommand.getTypeAddress());
		logger.info("nom  " + userCommand.getStreet());
		logger.info("prenom "+userCommand.getCity());
		logger.info("nom " + userCommand.getZipCode());
		logger.info("prenom "+userCommand.getCountry());
		logger.info("nom " + userCommand.getPlaceName());

		return "welcomePage";
	}
/*
	@RequestMapping(value = "/getformaddpropertyManager", method = RequestMethod.GET)
	public String getFormAddPorpertyManager(Map<String,Object> model) {
		logger.info("==== IN /getformaddpropertyManager =====");

		model.put("propertyManagerCommand", new PropertyManagerCommand());
		return "addPropertyManagerPage";
	}

	@RequestMapping(value = "/addpropertyManager", method = RequestMethod.POST)
	public String addPropertyManager(@ModelAttribute("propertyManagerCommand") PropertyManagerCommand propertyManagerCommand) {
		logger.info("==== Insert Property Manager =====");

		logger.info("nom "+propertyManagerCommand.getFnamePMC());
		logger.info("prenom "+propertyManagerCommand.getLnamePMC());

		//this.manager.add();
		return "welcomePage";
	}
*/
}
