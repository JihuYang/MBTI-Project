package com.hgu.webcamp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/teamE")
public class TeamE_Controller {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/start", method = RequestMethod.GET)
	public String teamE_start(Model model) {
		
		System.out.println("start page loaded");
		
		return "teamE/start";
	}
	
	@RequestMapping(value = "/relation", method = RequestMethod.GET)
	public String teamE_relation(Model model) {
		
		System.out.println("start page loaded");
		
		return "teamE/relation";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/question", method = RequestMethod.GET)
	public String teamE_question(Model model) {
		
		System.out.println("question page loaded");
		
		return "teamE/question";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public String teamE_result(Model model) {
		
		System.out.println("result page loaded");
		
		return "teamE/result";
	}
	
}
