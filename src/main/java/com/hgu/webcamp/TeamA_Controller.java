package com.hgu.webcamp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
		
		
		int questionNum= 1; // question 테이블에서 문제 
		int questionId = 1; // answer 테이블에서 문제 
		int testId = 1; // 테스트이름

		/*String temp = request.getParameter("questionNum");
		System.out.println("ajax로 전달한 값 : " + temp);
		if(temp != null) {
			questionNum = Integer.parseInt(temp);
			questionNum++;
		}
		System.out.println(questionNum);
		
		  
		questionId = questionNum;
		*/

		//List<questionDTO> question = questionService.readQuestion(testId);
		List<questionDTO> question = questionService.readQuestionAndAnswer(testId, questionNum, questionId);

		for (questionDTO q : question) {
			
			System.out.println(q.toString());
		}
		//mv.addObject("questionNum", questionNum);
		mv.addObject("questions", question);		
		mv.setViewName("teamA/question");
		
		System.out.println(mv);
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
	
	// ajax로 값을 주고받는 Controller 
	@RequestMapping(value = "/ajax", method = RequestMethod.POST)
	public @ResponseBody List<questionDTO> ajax_question(@RequestParam("questionNum") int questionNum) {
				
		
		System.out.println("ajax conveyed value to server");
		
		int testId = 1;
		int questionId = 1;
		
		questionNum++;
		
		questionId = questionNum;
		
		//List<questionDTO> question = questionService.readQuestion(testId);
		List<questionDTO> question = questionService.readQuestionAndAnswer(testId, questionNum, questionId);
		
		
		for (questionDTO q : question) {
			System.out.println(q.toString());
		}
		
		return question;
		}
}
