package org.syndic.client.web.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@Controller
public class Home {
	
	
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcome() {
		return "welcomePage";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "loginPage";
	}

}
