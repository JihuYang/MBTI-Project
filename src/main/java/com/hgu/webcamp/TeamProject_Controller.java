package com.hgu.webcamp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/")

public class TeamProject_Controller {

	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String teamA_start(Model model) {
		
		System.out.println("main page loaded");
		
		return "/index";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String teamA_question(Model model) {
		
		System.out.println("my page loaded");
		
		return "/myPage";
	}

}
