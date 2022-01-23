package com.hgu.webcamp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hgu.webcamp.DTO.questionDTO;
import com.hgu.webcamp.Service.questionService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/teamE")
public class TeamE_Controller {
	
	@Autowired
	questionService questionService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/start", method = RequestMethod.GET)
	public String teamE_start(Model model) {
		
		System.out.println("start page loaded");
		
		return "teamE/start";
	}
	
	@RequestMapping(value = "/who", method = RequestMethod.GET)
	public String teamE_relation(Model model) {
		
		System.out.println("relation page loaded");
		
		return "teamE/who";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/question", method = RequestMethod.GET)
	public ModelAndView teamE_question(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		System.out.println("question page loaded");
		
		System.out.println(request.getParameter("testId"));
		
		 
		int testId = 5; //테스트이름
//		int questionNum = 1;
		
		

		List<questionDTO> question = questionService.readQuestion(testId);
		
		for (questionDTO q : question) {
			
			System.out.println(q.toString());
		}
		
		mv.addObject("questions", question);
		
		System.out.println(mv);
		
		mv.setViewName("teamE/question");

		return mv;
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
