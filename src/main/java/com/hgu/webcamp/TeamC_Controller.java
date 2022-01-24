package com.hgu.webcamp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hgu.webcamp.DTO.commentDTO;
import com.hgu.webcamp.DTO.questionDTO;
import com.hgu.webcamp.Service.*;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/teamC")
public class TeamC_Controller {
	
	@Autowired
	commentService commentService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/start", method = RequestMethod.GET)
	public String teamC_start(Model model) {
		
		System.out.println("start page loaded");
		
		return "teamC/start";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/question", method = RequestMethod.GET)
	public String teamC_question(Model model) {
		
		System.out.println("question page loaded");
		
		return "teamC/question";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public String teamC_result(Model model) {
		
		System.out.println("result page loaded");
		
		return "teamC/result";
	}
	//로딩을 위한 mapping 
	@RequestMapping(value ="/loading", method = RequestMethod.GET)
	public String teamC_loading(Model model) {
		System.out.println("loading page loaded");
		
		return "teamC/loading";
	}
	//comment
		@RequestMapping(value ="/comment", method = RequestMethod.GET)
		public String teamC_comment(Model model) {
			System.out.println("comment page loaded");
			int userId=1;
			int testId=1;
			List<commentDTO> comment = new ArrayList<commentDTO>();

			comment = commentService.getCommentList(testId);
			
			System.out.println(comment.toString());
			
			return "teamC/comment";
		}
		
	
}
