package org.syndic.client.web.event.controller;

import fr.upond.syndic.repo.model.common.Condo;
import fr.upond.syndic.repo.model.event.Event;
import fr.upond.syndic.repo.model.user.UserData;
import fr.upond.syndic.service.IManager;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;
import org.syndic.client.web.command.EventCommand;

import java.util.HashMap;
import java.util.Map;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@Controller
public class EventController {
	
	private static final Log logger = LogFactory.getLog(EventController.class);

	@Autowired
	private IManager<Object> manager;
	
	public void setManager(IManager<Object> manager) {
		this.manager = manager;
	}
	
	@RequestMapping(value = "/getformaddevent", method = RequestMethod.GET)
	public String getFormAddUser(Map<String,Object> model) {
		logger.info("==== Get Form Event =====");
		model.put("eventCommand", new EventCommand());
		return "addEventPage";
	}
	
	@RequestMapping(value = "/addevent", method = RequestMethod.POST)
	public RedirectView addEvent(@ModelAttribute("eventCommand") EventCommand eventCommand, ModelMap model) {
		logger.info("==== Insert Event =====");
		logger.info("******** "+eventCommand.getEventName());
		Event event = new Event(eventCommand.getEventName(),eventCommand.getTypeEvent(),eventCommand.getDateEvent(),eventCommand.getDescEvent(),null);
		this.manager.add(event);
		logger.info("$$$$$$$$$$$$$$titio$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$type == AG");

		if(event.getEventName()=="ag" || event.getEventName() == "AG"){
			logger.info("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$type == AG");
			model.put("eventId", eventCommand.getEventName());
			return new RedirectView("listusersforag.ldz");
		}
		return new RedirectView("listevent.ldz");
	}

	@RequestMapping(value = "/listevent", method = RequestMethod.GET)
	public String listEvent(ModelMap model) {
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
		System.out.println(eventFormatJSON);
		model.addAttribute("listevent", this.manager.get(new Event()));
		model.addAttribute("jsonEvent", eventFormatJSON);

		return "listEventPage";
	}
	
	@RequestMapping(value = "/eventcondo", method = RequestMethod.GET)
	public String affectEvent (@RequestParam String eventId, ModelMap model) {
		Event event = new Event();
		event.setEventName(eventId);
		for (Object ev : this.manager.get(event) ) {
			model.addAttribute("event", event);
		}
		model.addAttribute("listcondo",this.manager.get(new Condo()));
		return "affectEventPage";
	}

	@RequestMapping(value = "/listusersforag", method = RequestMethod.GET)
	public String listUsersForAG(@RequestParam String eventId, ModelMap model) {

		logger.info("=========================listusersforag=====================================");
		logger.info("**************id_event = " + eventId );

		Map<String, String> list = new HashMap<String, String>();

		for (Object userdata : this.manager.get(new UserData()) ) {
			logger.info("user (name) "+((UserData)userdata).getFirstName());
		}
		model.addAttribute("listusers",this.manager.get(new UserData()));
		return "listUsersForAGPage";
	}


}
