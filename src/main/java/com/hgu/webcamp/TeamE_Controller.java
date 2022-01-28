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
import com.hgu.webcamp.Service.questionService;
import com.hgu.webcamp.Service.userService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/teamE")
public class TeamE_Controller {
	
	@Autowired
	questionService questionService;
	
	@Autowired
	userService userService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/start", method = RequestMethod.GET)
	public ModelAndView teamE_start(Model model) {
		
		ModelAndView mv = new ModelAndView();

		System.out.println("start page loaded");
		int testId = 5;
		int views = 0;
				
		views = userService.readViews(testId);

		mv.addObject("views", views);
		mv.setViewName("teamE/start");
		return mv;
	}
	
	@RequestMapping(value = "/loading", method = RequestMethod.GET)
	public String teamE_loading(Model model) {
		
		System.out.println("loading page loaded");
		
		return "teamE/loading";
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
		
		
		int questionNum= 1; // question 테이블에서 문제 
		int questionId = 1; // answer 테이블에서 문제 
		int testId = 5; // 테스트이름

		List<questionDTO> question = questionService.readQuestionAndAnswer(testId, questionNum, questionId);
		userService.updateViews(testId);
		
		mv.addObject("questions", question);		
		mv.setViewName("teamE/question");
		
		System.out.println(mv);
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
	
	// ajax로 값을 주고받는 Controller 
		@RequestMapping(value = "/ajax", method = RequestMethod.POST)
		public @ResponseBody List<questionDTO> ajax_question(@RequestParam("questionNum") int questionNum) {
			
			int testId = 5;
			int questionId = 1;
			// ajax로부터 받은 문제 번호를 1증가 시키고 questionId에도 해당 값 부여   
			questionNum++;
			questionId = questionNum;
			
			
			// 데이터베이스에서 testId, questionNum, questionId 에 따른 값 가져오기   
			List<questionDTO> question = questionService.readQuestionAndAnswer(testId, questionNum, questionId);
			// ajax로 보내기 
			return question;
			}
	
}
