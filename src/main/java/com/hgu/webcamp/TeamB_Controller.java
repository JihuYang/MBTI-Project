package com.hgu.webcamp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/teamB")
public class TeamB_Controller {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/start", method = RequestMethod.GET)
	public String teamB_start(Model model) {
		
		System.out.println("start page loaded");
		
		return "teamB/start";
	}
	
	@RequestMapping(value = "/question", method = RequestMethod.GET)
	public String teamB_question(Model model) {
		
		System.out.println("question page loaded");
		
		return "teamB/question";
	}
	
	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public String teamB_result(Model model) {
		
		System.out.println("result page loaded");
		
		return "teamB/result";
	}
	
	@RequestMapping(value = "/reference", method = RequestMethod.GET)
	public String teamB_reference(Model model) {
		
		System.out.println("reference page loaded");
		
		return "teamB/reference";
	}
	
	@RequestMapping(value = "/loading", method = RequestMethod.GET)
	public String teamB_loading(Model model) {
		
		System.out.println("loading page loaded");
		
		return "teamB/loading";
	}
}
