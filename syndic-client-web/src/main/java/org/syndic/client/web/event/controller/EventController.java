package org.syndic.client.web.event.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.AutoPopulatingList;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.syndic.client.web.command.AddressCommand;
import org.syndic.client.web.command.EventCommand;
import org.syndic.client.web.command.QuestionCommand;
import org.syndic.client.web.helper.EventHelper;

import fr.upond.syndic.repo.model.BaseObject;
import fr.upond.syndic.repo.model.common.Condo;
import fr.upond.syndic.repo.model.common.Polling;
import fr.upond.syndic.repo.model.common.PollingPartOwner;
import fr.upond.syndic.repo.model.common.Question;
import fr.upond.syndic.repo.model.event.AgEvent;
import fr.upond.syndic.repo.model.event.Event;
import fr.upond.syndic.repo.model.user.PartOwner;
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
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@ModelAttribute("eventCommand")
    public EventCommand getEventCommand() {
		EventCommand eventCommand = new EventCommand();
	    eventCommand.setQuestions(new AutoPopulatingList(QuestionCommand.class));
	    eventCommand.setCondoId(new AutoPopulatingList(AddressCommand.class));
		return eventCommand;
    }
	
	/**
	 * <p>Called when the user clicks the add event</p>
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/event/add", method = RequestMethod.GET)
	public String getFormAddUser(ModelMap model) {
		
		logger.info("== URI: /event/add ==");
		List<BaseObject> listCondo = this.manager.get(new Condo());
		List<String> listDept = new ArrayList<String>(0);
		for(BaseObject bo : listCondo) {
			if (!listDept.contains(((Condo) bo).getAddress().getZipCode())) {
				listDept.add(((Condo) bo).getAddress().getZipCode());
				logger.info("Zip Code: "+((Condo) bo).getAddress().getZipCode());
			}
		}
		model.put("condoJson",EventHelper.condoToJson(listCondo));
		model.put("listDept", listDept);
		return "addEventPage";
	}
	
	/**
	 * <p>Called when the user clicks the add button</p>
	 * @param fieldId
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value="/appendQuestionView")
	public String appendQuestionField(@RequestParam Integer fieldId, ModelMap model) {	
		logger.info("/appendQuestionView");
		model.addAttribute("questionNumber", fieldId);
		return "addQuestionPage";
	}
	
	/**
	 * <p>Called when the user Select Department</p>
	 * @param fieldId
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value="/appendAddressView")
	public String appendAddressField(@RequestParam int fieldId, @RequestParam int fieldIndex, ModelMap model) {
		logger.info("appendAddressView "+ fieldId +" "+ fieldIndex);
		List<BaseObject> listCondo = this.manager.get(new Condo());
		BaseObject condoSelected = null ;
		for(BaseObject bo : listCondo) {
			if (((Condo)bo).getId() == fieldId) {
				condoSelected = bo;
				logger.info("appendAddressView condoSelected = bo");
			}
		}
		model.addAttribute("number", fieldIndex);
		model.addAttribute("condoSelected", condoSelected);
		return "addAddressPage";
	}
	
	/**
	 * <p>Called when the user submit the event</p>
	 * @param eventCommand
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/event/add", method = RequestMethod.POST)
	public String addEvent(@ModelAttribute("eventCommand") EventCommand eventCommand) {
		
		logger.info("== URI: /event/add ==");
		
		AgEvent agEvent;
		Set<Question> listQuestion;
		Set<Condo> setCondo = new HashSet<Condo>(0);
		Polling polling;
		List<PartOwner> listPartOwner; 
		Set<PollingPartOwner> setPollingPartOwner;
		
		
		for (Object obj: eventCommand.getCondoId()) {
			for (BaseObject condo : this.manager.get(new Condo())) {
				if(Integer.parseInt(((AddressCommand)obj).getId()) == ((Condo) condo).getId()) {
					setCondo.add((Condo)condo);
				}
			}
		}
		
		if ( eventCommand.getTypeEvent().equals("AG") ) {
			logger.info("Event Type AG");
			agEvent = new AgEvent(eventCommand.getEventName(),eventCommand.getTypeEvent(),eventCommand.getDateEvent(),
		              eventCommand.getDescEvent(),null);
			listQuestion = new HashSet<Question>(0);
			for ( Object obj: eventCommand.getQuestions() ) {
				if ( ((QuestionCommand)obj).getQuestionName() != null ) {
					logger.info("Questions "+((QuestionCommand)obj).getQuestionName());
					listQuestion.add(new Question(((QuestionCommand)obj).getQuestionName()));
				}
			}
			
			polling = new Polling();
			polling.setClose(false);
			polling.setAgEvent(agEvent);
			polling.setId(agEvent.getEventName());
			polling.setQuestions(listQuestion);
			agEvent.setPolling(polling);
			
			listPartOwner = new ArrayList<PartOwner>(0);
			setPollingPartOwner = new HashSet<PollingPartOwner>(0);
			for ( BaseObject po : this.manager.get(new PartOwner()) ) {
				for (Condo condo : setCondo) {
					if ( ((PartOwner)po).getAddress().equals(condo.getAddress()) ) {
						PollingPartOwner ppo = new PollingPartOwner ();
						ppo.setPartOwner((PartOwner)po);
						ppo.setPoll(false);
						ppo.setPolling(polling);
						setPollingPartOwner.add(ppo);
						((PartOwner)po).setPollingPartOwner(setPollingPartOwner);
						listPartOwner.add((PartOwner)po);
					}
				}
			}
			
			polling.setPollingPartOwner(setPollingPartOwner);
			
			this.manager.add(agEvent);
			//this.manager.add(polling);cascade save-updateS
			for (PartOwner po : listPartOwner) {
				this.manager.upDate(po);
			}
			for (PollingPartOwner ppo : setPollingPartOwner) {
				this.manager.add(ppo);
			}
			agEvent.setCondo(setCondo);
			this.manager.upDate(agEvent);
			
		} else {
            if(eventCommand.getTypeEvent().equals("Intervention")) {
            	logger.info("Event Type Intervention");
			} else {
				if(eventCommand.getTypeEvent().equals("Incident")) {
					logger.info("Event Type Incident");
					Event event = new Event(eventCommand.getEventName(),eventCommand.getTypeEvent(),eventCommand.getDateEvent(),
			                eventCommand.getDescEvent(),null);
					this.manager.add(event);
					event.setCondo(setCondo);
					this.manager.upDate(event);
				}
			}
		}
		
		return "welcomePage";
	}
	
	/**
	 * <p>Called when the user click list events</p>
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/event/list", method = RequestMethod.GET)
	public String listEvent(ModelMap model) {
		logger.info("== URI: /event/list ==");
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
	
	/**
	 * <p>Called when the user click </p>
	 * @param model
	 * @return
	 */
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
	
	/**
	 * <p>Called when the user click delete event</p>
	 * @param id: The Id of Event
	 * @return
	 */
	@RequestMapping(value = "/events/{id}/{type}/delete", method = RequestMethod.GET)
	public String deleteEvent (@PathVariable("id") String id, @PathVariable("type") String type) {
		logger.info("== URI: /events/{id}/{type}/delete == "+id+ " "+type);
		if (type.equals("AG")) {
			AgEvent agEvent = new AgEvent();
			agEvent.setEventName(id);
			this.manager.delete(agEvent);
		}
		/*Event event = new Event();
		event.setEventName(id);
		this.manager.delete(event);*/
		return "listEventPage";
	}
	
	/**
	 * 
	 * @param id: The Id of Event
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/events/{id}/update", method = RequestMethod.GET)
	public String updateEventForm(@PathVariable("id") String id, ModelMap model) {
		logger.info("== URI: /events/{id}/update == "+id);
		return "listEventPage";
	}
	
	/**
	 * <p>Called when the user click polling</p>
	 * @return
	 */
	@RequestMapping(value = "/getformpolling", method = RequestMethod.GET)
	public String getFormPolling (ModelMap model) {
		
		logger.info("== URI: /getformpolling ==");
		model.addAttribute("polling", this.manager.get(new Polling()));
		return "pollingPage";
	}
	
	/**
	 * <p>Called when the user click list polling</p>
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/pollingresult", method = RequestMethod.GET)
	public String getResultPolling (ModelMap model) {
		logger.info("== URI: /resultpolling ==");
		model.addAttribute("resultpolling",this.manager.get(new Polling()));
		return "pollingResultPage";
	}

}
