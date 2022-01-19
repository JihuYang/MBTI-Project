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
import com.hgu.webcamp.Service.*;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/teamA")
public class TeamA_Controller {

	@Autowired
	questionService questionService;

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
	public ModelAndView teamA_question(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		System.out.println("question page loaded");
		
//		int testId = Integer.parseInt(request.getParameter("testId"));
		
		int testId = 1;
		

		List<questionDTO> question = questionService.readQuestion(testId);
		
		for (questionDTO q : question) {
			
			System.out.println(q.toString());
		}
		
		mv.addObject("questions", question);
		
		System.out.println(mv);
		
		mv.setViewName("teamA/question");

		return mv;
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/question/1", method = RequestMethod.GET)
	public String teamA_question_1(Model model) {

		System.out.println("question page loaded");

		return "teamA/question/1";
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
