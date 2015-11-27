package org.syndic.client.web.event.controller;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.syndic.client.web.command.EventCommand;

import fr.upond.syndic.service.IManager;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@Controller
public class EventController {
	
	private static final Log logger = LogFactory.getLog(EventController.class);
	
	@Autowired
	private IManager<EventCommand> eventManager;
	
	public void setUserManager(IManager<EventCommand> eventManager) {
		this.eventManager = eventManager;
	}
	
	@RequestMapping(value = "/getformaddevent", method = RequestMethod.GET)
	public String getFormAddUser(Map<String,Object> model) {
		logger.info("==== Get Form Event =====");
		model.put("eventCommand", new EventCommand());
		return "addEventPage";
	}
	
	@RequestMapping(value = "/addevent", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("eventCommand") EventCommand eventCommand) {
		logger.info("==== Insert Event =====");
		
		this.eventManager.add(eventCommand);
		return "welcomePage";
	}

}
