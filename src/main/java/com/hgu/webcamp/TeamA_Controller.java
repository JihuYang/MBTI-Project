package com.hgu.webcamp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/teamA")
public class TeamA_Controller {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/start", method = RequestMethod.GET)
	public String teamA_start(Model model) {
		
		System.out.println("start page loaded");
		
		return "teamA/start";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/question", method = RequestMethod.GET)
	public String teamA_question(Model model) {
		
		System.out.println("question page loaded");
		
		return "teamA/question";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/loading", method = RequestMethod.GET)
	public String teamA_loading(Model model) {
		
		System.out.println("loading page loaded");
		
		return "teamA/loading";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public String teamA_result(Model model) {
		
		System.out.println("result page loaded");
		
		return "teamA/result";
	}
	
}
