package org.syndic.client.web.event.controller;

import java.util.Map;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.syndic.client.web.command.EventCommand;

import fr.upond.syndic.repo.model.event.Event;
import fr.upond.syndic.repo.model.BaseObject;
import fr.upond.syndic.repo.model.common.Condo;
import fr.upond.syndic.repo.model.common.Polling;
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
	private IManager<BaseObject> manager;
	
	public void setManager(IManager<BaseObject> manager) {
		this.manager = manager;
	}
	
	@RequestMapping(value = "/getformaddevent", method = RequestMethod.GET)
	public String getFormAddUser(Map<String,Object> model) {
		logger.info("==== Get Form Event =====");
		model.put("eventCommand", new EventCommand());
		return "addEventPage";
	}
	
	@RequestMapping(value = "/addevent", method = RequestMethod.POST)
	public String addEvent(@ModelAttribute("eventCommand") EventCommand eventCommand) {
		logger.info("==== Insert Event =====");
		logger.info("******** "+eventCommand.getEventName());
		Event event = new Event(eventCommand.getEventName(),eventCommand.getTypeEvent(),eventCommand.getDateEvent(),eventCommand.getDescEvent(),null);
		this.manager.add(event);
		return "welcomePage";
	}
	
	@RequestMapping(value = "/listevent", method = RequestMethod.GET)
	public String listEvent(ModelMap model) {
		logger.info("== URI: /listevent ==");
		String eventFormatJSON = "";

		for (Object event : this.manager.get(new Event()) ) {
			logger.info("event (name) "+((Event)event).getEventName());
			if( eventFormatJSON != "" )
				eventFormatJSON+=',';
			eventFormatJSON += " { ";
			eventFormatJSON += " title : `" + ((Event) event).getEventName() + "`,";
			eventFormatJSON += " start  : `" + ((Event) event).getDateEvent() + "` ";
			eventFormatJSON += " } ";
		}
		model.addAttribute("listevent",this.manager.get(new Event()));
		model.addAttribute("jsonEvent", eventFormatJSON);
		return "listEventPage";
	}
	
	@RequestMapping(value = "/eventcondo", method = RequestMethod.GET)
	public String affectEvent (@RequestParam String eventId, ModelMap model) {
		Event event = new Event();
		event.setEventName(eventId);
		for (Object ev : this.manager.get(event) ) {
			model.addAttribute("event", ev);
		}
		model.addAttribute("listcondo",this.manager.get(new Condo()));
		return "affectEventPage";
	}
	
	@RequestMapping(value = "/delevent", method = RequestMethod.GET)
	public String deleteEvent (@RequestParam String eventId) {
		logger.info("== URI: /delevent ==");
		Event event = new Event();
		event.setEventName(eventId);
		//this.manager.delete(event);
		return "listEventPage";
	}
	
	@RequestMapping(value = "/getformpolling", method = RequestMethod.GET)
	public String getFormPolling () {
		logger.info("== URI: /getformpolling ==");
		return "pollingPage";
	}
	
	@RequestMapping(value = "/pollingresult", method = RequestMethod.GET)
	public String getResultPolling (ModelMap model) {
		logger.info("== URI: /resultpolling ==");
		logger.info("+++"+this.manager.get(new Polling()).size());
		model.addAttribute("resultpolling",this.manager.get(new Polling()));
		return "pollingResultPage";
	}

}
