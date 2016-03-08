
package org.syndic.client.web.users.controller;

import fr.upond.syndic.repo.model.common.Address;
import fr.upond.syndic.repo.model.user.PartOwner;
import fr.upond.syndic.repo.model.user.UserData;
import fr.upond.syndic.security.model.User;
import fr.upond.syndic.security.model.UserRole;
import fr.upond.syndic.service.IManager;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.syndic.client.web.command.UserCommand;
import org.syndic.client.web.validator.UserValidator;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;


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
	public String addUser(@ModelAttribute("userCommand") UserCommand userCommand, BindingResult result) {
		logger.info("== uri: /adduser ==");
		this.userValidator.validate(userCommand, result);
		if(result.hasErrors()) {
			return "addUserPage";
		} else {
			if("ROLE_OWNER".equals(userCommand.getTypeUser())) {
				
				PartOwner partOwner = new PartOwner();
				Address address = new Address();
				User user = new User(userCommand.getUserName(), userCommand.getPassWord(), true);
				UserRole userRole = new UserRole(userCommand.getTypeUser());
				Set<UserRole> set = new HashSet<UserRole>(0);
				
				userRole.setUser(user);
				set.add(userRole);
				user.setUserRole(set);
				
				
				address.setNumAdress(userCommand.getNumAddress());
				address.setTypeAddress(userCommand.getTypeAddress());
				address.setStreet(userCommand.getStreet());
				address.setZipCode(userCommand.getZipCode());
				address.setCity(userCommand.getCity());
				address.setCountry(userCommand.getCountry());
				address.setPlaceName(userCommand.getPlaceName());
				
				partOwner.setType(userCommand.getTypeUser());
				partOwner.setFirstName(userCommand.getFirstName());
				partOwner.setLastName(userCommand.getLastName());
				partOwner.setPhone(userCommand.getPhone());
				partOwner.setMobile(userCommand.getMobile());
				partOwner.setEmail(userCommand.getEmail());
				partOwner.setAddress(address);
				partOwner.setUsers(user);
				
				this.manager.add(partOwner);
			}
			return "welcomePage";
		}
	}



}
