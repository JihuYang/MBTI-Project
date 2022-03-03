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


import org.springframework.web.servlet.ModelAndView;

import com.hgu.webcamp.DTO.commentDTO;

import com.hgu.webcamp.DTO.questionDTO;
import com.hgu.webcamp.DTO.testDTO;
import com.hgu.webcamp.DTO.userDTO;
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
	
	@Autowired
	userService userService;
	
	@Autowired
	testService testService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/start", method = RequestMethod.GET)
	public ModelAndView teamB_start(Model model) {
		
		ModelAndView mv = new ModelAndView();
		
		int views = 0; // 테스트 한 횟수 
		int testId=2;
		System.out.println("start page loaded");
		
		views = userService.readViews(testId);

		mv.addObject("views", views);
		mv.setViewName("teamB/start");
		return mv;
	}
	/*
	@RequestMapping(value = "/question", method = RequestMethod.GET)
	public String teamB_question(Model model) {
		
		System.out.println("question page loaded");
		
		return "teamB/question";
	}
	*/
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/question", method = RequestMethod.GET)
	public ModelAndView teamB_question(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		System.out.println("question page loaded");
		
		
		int questionNum= 1; // question 테이블에서 문제 
		int questionId = 1; // answer 테이블에서 문제 
		int testId = 2; // 테스트이름
		

		List<questionDTO> question = questionService.readQuestionAndAnswer(testId, questionNum, questionId);
		/* 문제 조회수 업데이트 */
		userService.updateViews(testId);
		
		
		
		mv.addObject("questions", question);
		mv.setViewName("teamB/question");
		
		System.out.println(mv);
		return mv;
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

	// ajax로 값을 주고받는 Controller 
		@RequestMapping(value = "/ajax", method = RequestMethod.POST)
		public @ResponseBody List<questionDTO> ajax_question(@RequestParam("questionNum") int questionNum) {
							
			int testId = 2;
			int questionId = 1;
			// ajax로부터 받은 문제 번호를 1증가 시키고 questionId에도 해당 값 부여   
			questionNum++;
			questionId = questionNum;
			
			
			// 데이터베이스에서 testId, questionNum, questionId 에 따른 값 가져오기   
			List<questionDTO> question = questionService.readQuestionAndAnswer(testId, questionNum, questionId);
			// ajax로 보내기 
			return question;
			}

	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public ModelAndView teamB_result(Model model, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}		
		
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count = comment.size();
		String mbti = "ENFJ";
		int count1 = comment.size();
		
		mv.addObject("comments",comment);
		mv.addObject("count", count);
		mv.addObject("mbti", mbti);
		mv.addObject("count", count1);

		mv.setViewName("teamB/result");
		
		System.out.println(mv);

		return mv;
	}
	
	
	@RequestMapping(value = "/delete_ok/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id) {
		int i = commentService.deleteComment(id);
		
		if(i == 0) System.out.println("Error! delete Failed");
		else System.out.println("댓글 삭제 완료.");
		
//		return "redirect:<%=request.getContextPath()%>/result";
		return "redirect:/teamB/start";
	}
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addPostOK(HttpServletRequest request) throws ParseException, UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		//HttpSession session = request.getSession();
		//String userid = request.getSession().getAttribute("").toString();		
		int testId = 2;
		
		commentDTO dto = new commentDTO();
		
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			dto.setUserId(userId);
		}	
		
		SimpleDateFormat f = new SimpleDateFormat("yyyy/MM/dd kk:mm:ss");
    	Date regDate=f.parse(f.format(new Date()));
		
		String comment = request.getParameter("comment");
		
		dto.setComment(comment);
		dto.setRegDate(regDate);
		dto.setTestId(testId);
		
		
		int i = commentService.insertComment(dto);
		if(i==0) {
			System.out.println("데이터 추가 실패 ");
			
		}
		else {
			System.out.println("데이터 추가 성공 ");
		}


		return "redirect:/teamB/start";
	}
	@RequestMapping(value = "/saved", method = RequestMethod.POST)
	public String savedOK(HttpServletRequest request) throws ParseException, UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");

		int testId = 2;
		
		testDTO dto = new testDTO();
		
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			dto.setUserId(userId);
		}	
		
		dto.setTestId(testId);
		String type = request.getParameter("mbti");
		
		System.out.println(type);
		int mbti = testService.readMbtiIdByType(type);
		dto.setResult(mbti);
		
		int i = testService.insertTest(dto);
		if(i==0) {
			System.out.println("데이터 추가 실패 ");
			
		}
		else {
			System.out.println("데이터 추가 성공 ");
		}


		return "redirect:/myPage";
	}
	@RequestMapping(value = "/result/ENFJ", method = RequestMethod.GET)
	public ModelAndView teamB_result_ENFJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		String mbti = "ENFJ";
		mv.addObject("mbti", mbti);
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		mv.setViewName("teamB/result/ENFJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ENFP", method = RequestMethod.GET)
	public ModelAndView teamB_result_ENFP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "ENFP";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/ENFP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ENTJ", method = RequestMethod.GET)
	public ModelAndView teamB_result_ENTJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "ENTJ";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/ENTJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ENTP", method = RequestMethod.GET)
	public ModelAndView teamB_result_ENTP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "ENTP";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/ENTP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ESFJ", method = RequestMethod.GET)
	public ModelAndView teamB_result_ESFJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "ESFJ";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/ESFJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ESFP", method = RequestMethod.GET)
	public ModelAndView teamB_result_ESFP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "ESFP";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/ESFP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ESTJ", method = RequestMethod.GET)
	public ModelAndView teamB_result_ESTJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "ESTJ";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/ESTJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ESTP", method = RequestMethod.GET)
	public ModelAndView teamB_result_ESTP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "ESTP";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/ESTP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/INFJ", method = RequestMethod.GET)
	public ModelAndView teamB_result_INFJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "INFJ";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/INFJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/INFP", method = RequestMethod.GET)
	public ModelAndView teamB_result_INFP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "INFP";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/INFP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/INTJ", method = RequestMethod.GET)
	public ModelAndView teamB_result_INTJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "INTJ";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/INTJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/INTP", method = RequestMethod.GET)
	public ModelAndView teamB_result_INTP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "INTP";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/INTP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ISFJ", method = RequestMethod.GET)
	public ModelAndView teamB_result_ISFJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "ISFJ";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/ISFJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ISFP", method = RequestMethod.GET)
	public ModelAndView teamB_result_ISFP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "ISFP";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/ISFP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ISTJ", method = RequestMethod.GET)
	public ModelAndView teamB_result_ISTJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "ISTJ";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/ISTJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ISTP", method = RequestMethod.GET)
	public ModelAndView teamB_result_ISTP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 2;
		if(request.getSession().getAttribute("tempUser") != null) {
			int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
			mv.addObject("userId", userId);
		}			
		List<commentDTO> comment = new ArrayList<commentDTO>();

		comment = commentService.getCommentList(testId);
		
		int count2 = comment.size();
		System.out.println(count2);
		
		mv.addObject("comments",comment);
		mv.addObject("count", count2);
		String mbti = "ISTP";
		mv.addObject("mbti", mbti);
		mv.setViewName("teamB/result/ISTP");
		
		System.out.println(mv);
		
		return mv;
	}
}
