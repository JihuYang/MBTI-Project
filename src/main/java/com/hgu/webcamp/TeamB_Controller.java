package com.hgu.webcamp;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hgu.webcamp.DTO.commentDTO;
import com.hgu.webcamp.DTO.questionDTO;
import com.hgu.webcamp.Service.*;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/teamB")
public class TeamB_Controller {
	@Autowired
	questionService questionService;
	
	@Autowired
	commentService commentService;
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
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public ModelAndView teamA_result(Model model) {
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		int userId = 2;
		
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		mv.addObject("comments",comment);
		mv.addObject("userId", userId);
		mv.setViewName("teamB/result");
		
		System.out.println(mv);

		return mv;
	}
	
	
	@RequestMapping(value = "/delete_ok/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id) {
		int i = commentService.deleteComment(id);
		
		if(i == 0) System.out.println("Error! delete Failed");
		else System.out.println("댓글 삭제 완료.");
		
		return "redirect:../result";
	}
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addPostOK(HttpServletRequest request) throws ParseException, UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		//HttpSession session = request.getSession();
		//String userid = request.getSession().getAttribute("").toString();
		int userId = 2;
		int testId = 2;
		
		SimpleDateFormat f = new SimpleDateFormat("yyyy/MM/dd kk:mm:ss");
    	Date regDate=f.parse(f.format(new Date()));
		
		String comment = request.getParameter("comment");
		
		commentDTO dto = new commentDTO();
		dto.setComment(comment);
		dto.setRegDate(regDate);
		dto.setUserId(userId);
		dto.setTestId(testId);
		
		
		int i = commentService.insertComment(dto);
		if(i==0) {
			System.out.println("데이터 추가 실패 ");
			
		}
		else {
			System.out.println("데이터 추가 성공 ");
		}


		return "redirect:result";
	}
}
