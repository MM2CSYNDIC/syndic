package org.syndic.client.web.home.controller;

import fr.upond.syndic.repo.model.common.Provider;
import fr.upond.syndic.service.IManager;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.upond.syndic.repository.user.UserDaoImpl;
import org.syndic.client.web.command.CondoCommand;
import org.syndic.client.web.command.ProviderCommand;


import java.util.Map;

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
	private IManager<Object> manager;
	@Autowired
	private UserDaoImpl userDao;

	public void setManager(IManager<Object> manager) {
		this.manager = manager;
	}
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

	@RequestMapping(value = "/listprovider", method = RequestMethod.GET)
	public String listProvider(ModelMap model) {
		for (Object provider : this.manager.get(new Provider()) ) {
			logger.info("provider (name) "+((Provider)provider).getNameProvider());
		}

		model.addAttribute("listprovider",this.manager.get(new Provider()));
		return "listProviderPage";
	}

	@RequestMapping(value = "/getformaddprovider", method = RequestMethod.GET)
	public String getFormAddProvider(Map<String,Object> model) {
		logger.info("==== Get Form Provider =====");
		model.put("providerCommand", new ProviderCommand());
		return "addProviderPage";
	}

	@RequestMapping(value = "/addprovider", method = RequestMethod.POST)
	public String addProvider(@ModelAttribute("providerCommand") ProviderCommand providerCommand) {
		logger.info("==== Insert Provider =====");
		logger.info("******** "+providerCommand.getNameProvider());
		Provider provider = new Provider(providerCommand.getNameProvider(),providerCommand.getDescription(),"");
		this.manager.add(provider);
		return "welcomePage";
	}


	@RequestMapping(value = "/getformaddcondo", method = RequestMethod.GET)
	public String getFormAddCondo(Map<String,Object> model) {
		logger.info("==== Get Form Condo =====");
		model.put("condoCommand", new CondoCommand());
		return "addCondoPage";
	}


}
