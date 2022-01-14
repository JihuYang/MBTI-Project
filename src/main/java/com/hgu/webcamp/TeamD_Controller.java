package com.hgu.webcamp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/teamD")
public class TeamD_Controller {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/start", method = RequestMethod.GET)
	public String teamD_start(Model model) {
		
		System.out.println("start page loaded");
		
		return "teamD/start";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/question", method = RequestMethod.GET)
	public String teamD_question(Model model) {
		
		System.out.println("question page loaded");
		
		return "teamD/question";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public String teamD_result(Model model) {
		
		System.out.println("result page loaded");
		
		return "teamD/result";
	}
	
	@RequestMapping(value = "/loading", method = RequestMethod.GET)
	public String teamD_loading(Model model) {
		
		System.out.println("loading page loaded");
		
		return "teamD/loading";
	}
	
	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public String teamD_all(Model model) {
		
		System.out.println("all page loaded");
		
		return "teamD/all";
	}
	
}
