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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hgu.webcamp.DTO.commentDTO;
import com.hgu.webcamp.DTO.questionDTO;
import com.hgu.webcamp.Service.commentService;
import com.hgu.webcamp.Service.questionService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/teamC")
public class TeamC_Controller {
	@Autowired
	questionService questionService;
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
	
	//로딩을 위한 mapping 
	@RequestMapping(value ="/loading", method = RequestMethod.GET)
	public String teamC_loading(Model model) {
		System.out.println("loading page loaded");
		
		return "teamC/loading";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public ModelAndView teamC_result(Model model) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
		int userId = 2;
		
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		mv.addObject("comments",comment);
		mv.addObject("userId", userId);
		mv.setViewName("teamC/result");
		
		System.out.println(mv);
		
		return mv;
	}
	
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addPostOK(HttpServletRequest request) throws ParseException, UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		//HttpSession session = request.getSession();
		//String userid = request.getSession().getAttribute("").toString();
		int userId = 2;
		int testId = 3;
		
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
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOK(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");

		String comment = request.getParameter("comment");
		int id = Integer.parseInt(request.getParameter("id"));
		
		commentDTO dto = new commentDTO();
		dto.setComment(comment);
		dto.setId(id);
		
		int i = commentService.updateComment(dto);
		if(i==0) {
			System.out.println("데이터 수정 실패");
			
		}
		else {
			System.out.println("데이터 수정 성공 ");
		}
		return "redirect:result";
	}
	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id) {
		int i = commentService.deleteComment(id);
		
		if(i == 0) System.out.println("Error! delete Failed");
		else System.out.println("댓글 삭제 완료.");
		
		return "redirect:../result";
	}
	
	
}
