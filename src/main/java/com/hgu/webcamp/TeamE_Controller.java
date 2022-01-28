package com.hgu.webcamp;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.ArrayList;
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

import com.hgu.webcamp.DTO.commentDTO;
import com.hgu.webcamp.DTO.questionDTO;
import com.hgu.webcamp.DTO.testDTO;
import com.hgu.webcamp.DTO.userDTO;
import com.hgu.webcamp.Service.commentService;
import com.hgu.webcamp.Service.questionService;
import com.hgu.webcamp.Service.testService;
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
	
	@Autowired
	testService testService;
	
	@Autowired
	commentService commentService;
	
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
		
		@RequestMapping(value = "/saved", method = RequestMethod.POST)
		public String savedOK(HttpServletRequest request) throws ParseException, UnsupportedEncodingException {
			request.setCharacterEncoding("utf-8");

			int testId = 5;
			
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


			return "redirect:myPage";
		}
		
		@RequestMapping(value = "/result/ENTJ", method = RequestMethod.GET)
		public ModelAndView teamA_resultENTJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/ENTJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ENTP", method = RequestMethod.GET)
		public ModelAndView teamA_resultENTP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/ENTP");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ENFJ", method = RequestMethod.GET)
		public ModelAndView teamA_resultENFJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/ENFJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ENFP", method = RequestMethod.GET)
		public ModelAndView teamA_resultENFP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/ENFP");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ESTJ", method = RequestMethod.GET)
		public ModelAndView teamA_resultESTJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/ESTJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ESFJ", method = RequestMethod.GET)
		public ModelAndView teamA_resultESFJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/ESFJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ESFP", method = RequestMethod.GET)
		public ModelAndView teamA_resultESFP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/ESFP");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ESTP", method = RequestMethod.GET)
		public ModelAndView teamA_resultESTP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/ESTP");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/INFJ", method = RequestMethod.GET)
		public ModelAndView teamA_resultINFJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/INFJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/INFP", method = RequestMethod.GET)
		public ModelAndView teamA_resultINFP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/INFP");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/INTJ", method = RequestMethod.GET)
		public ModelAndView teamA_resultINTJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/INTJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/INTP", method = RequestMethod.GET)
		public ModelAndView teamA_resultINTP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/INTP");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ISFJ", method = RequestMethod.GET)
		public ModelAndView teamA_resultISFJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/ISFJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ISFP", method = RequestMethod.GET)
		public ModelAndView teamA_resultISFP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/ISFP");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ISTJ", method = RequestMethod.GET)
		public ModelAndView teamA_resultISTJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/ISTJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ISTP", method = RequestMethod.GET)
		public ModelAndView teamA_resultISTP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
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
			mv.setViewName("teamE/result/ISTP");
			
			System.out.println(mv);
			
			return mv;
		}
	
}
