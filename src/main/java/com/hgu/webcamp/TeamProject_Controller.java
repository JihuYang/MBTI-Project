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
	public String teamProject_index(Model model) {
		
		System.out.println("index page loaded");
		
		return "/index";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String teamProject_myPage(Model model) {
		
		System.out.println("my page loaded");
		
		return "/myPage";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String teamProject_register(Model model) {
		
		System.out.println("register page loaded");
		
		return "/register";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String teamProject_login(Model model) {
		
		System.out.println("login loaded");
		
		return "/login";
	}

}
