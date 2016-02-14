package org.syndic.client.web.home.controller;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.syndic.client.web.command.CondoCommand;
import org.syndic.client.web.command.ProviderCommand;

import fr.upond.syndic.repo.model.BaseObject;
import fr.upond.syndic.repo.model.common.Address;
import fr.upond.syndic.repo.model.common.Condo;
import fr.upond.syndic.repo.model.common.Lot;
import fr.upond.syndic.repo.model.common.Provider;
import fr.upond.syndic.service.IManager;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@Controller
public class Home {

	private static final Log logger = LogFactory.getLog(Home.class);

	@Autowired
	private IManager<BaseObject> manager;
	

	public void setManager(IManager<BaseObject> manager) {
		this.manager = manager;
	}
	

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcome() {
		logger.info("== URI: /welcome ==");
		return "welcomePage";
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin() {
		logger.info("== URI: /admin ==");
		return "adminPage";
	}

	@RequestMapping(value = "/sign", method = RequestMethod.GET)
	public String login(ModelMap model,@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		logger.info("== URI: /login ==");
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
		logger.info("== Get Form Provider ==");
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


	@RequestMapping(value = "/condo/add", method = RequestMethod.GET)
	public String getFormAddCondo(Map<String,Object> model) {
		logger.info("== uri: /getformaddcondo ==");
		model.put("condoCommand", new CondoCommand());
		return "addCondoPage";
	}
	
	@RequestMapping(value = "/condo/add", method = RequestMethod.POST)
	public String addCondo(@ModelAttribute("condoCommand") CondoCommand condoCommand) {
		logger.info("== uri: /addcondo ==");
		
		Address address = new Address(condoCommand.getNumAddressStart()+", "+condoCommand.getNumAddressEnd(),
				condoCommand.getTypeAddress(), condoCommand.getStreet(),condoCommand.getCity(), condoCommand.getZipcode(),
				condoCommand.getCountry(), condoCommand.getPlaceName());
		Lot lot = new Lot(Integer.parseInt(condoCommand.getCodeLot()), condoCommand.getTypeLot(),
				Integer.parseInt(condoCommand.getFloorLot()),
				Double.parseDouble(condoCommand.getAreaLot()), Double.parseDouble(condoCommand.getPart()));
		Set<Lot> setLot = new HashSet<Lot>(0);
		setLot.add(lot);
		Condo condo = new Condo(condoCommand.getName(), Double.parseDouble(condoCommand.getAreaCondo()), address);
		condo.setLot(setLot);
		
		this.manager.add(condo);
		
		return "addCondoPage";
	}


}
