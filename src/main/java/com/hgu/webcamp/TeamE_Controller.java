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
import com.hgu.webcamp.DTO.userDTO;
import com.hgu.webcamp.DTO.testDTO;
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
		
		
		int questionNum= 1; // question �뀒�씠釉붿뿉�꽌 臾몄젣 
		int questionId = 1; // answer �뀒�씠釉붿뿉�꽌 臾몄젣 
		int testId = 5; // �뀒�뒪�듃�씠由�

		List<questionDTO> question = questionService.readQuestionAndAnswer(testId, questionNum, questionId);
		
		
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
	
	// ajax濡� 媛믪쓣 二쇨퀬諛쏅뒗 Controller 
		@RequestMapping(value = "/ajax", method = RequestMethod.POST)
		public @ResponseBody List<questionDTO> ajax_question(@RequestParam("questionNum") int questionNum) {
			
			int testId = 5;
			int questionId = 1;
			// ajax濡쒕��꽣 諛쏆� 臾몄젣 踰덊샇瑜� 1利앷� �떆�궎怨� questionId�뿉�룄 �빐�떦 媛� 遺��뿬   
			questionNum++;
			questionId = questionNum;
			
			
			// �뜲�씠�꽣踰좎씠�뒪�뿉�꽌 testId, questionNum, questionId �뿉 �뵲瑜� 媛� 媛��졇�삤湲�   
			List<questionDTO> question = questionService.readQuestionAndAnswer(testId, questionNum, questionId);
			// ajax濡� 蹂대궡湲� 
			return question;
			}
		@RequestMapping(value = "/result/ENFJ", method = RequestMethod.GET)
		public ModelAndView teamE_result_ENFJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}			

			userService.updateViews(5);
			String mbti = "ENFJ";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/ENFJ");
			
			System.out.println(mv);

			return mv;
		}
		
		@RequestMapping(value = "/result/ENTJ", method = RequestMethod.GET)
		public ModelAndView teamE_resultENTJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}			
			List<commentDTO> comment = new ArrayList<commentDTO>();

			userService.updateViews(testId);
			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		
			

			String mbti = "ENTJ";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/ENTJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ENTP", method = RequestMethod.GET)
		public ModelAndView teamE_resultENTP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}			
			List<commentDTO> comment = new ArrayList<commentDTO>();

			userService.updateViews(testId);
			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		
			

			String mbti = "ENTP";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/ENTP");
			
			System.out.println(mv);
			
			return mv;
		}

		@RequestMapping(value = "/result/ENFP", method = RequestMethod.GET)
		public ModelAndView teamE_resultENFP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}	
			userService.updateViews(testId);
			List<commentDTO> comment = new ArrayList<commentDTO>();

			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		
			

			String mbti = "ENFP";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/ENFP");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ESTJ", method = RequestMethod.GET)
		public ModelAndView teamE_resultESTJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}		
			userService.updateViews(testId);
			List<commentDTO> comment = new ArrayList<commentDTO>();

			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		
			

			String mbti = "ESTJ";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/ESTJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ESFJ", method = RequestMethod.GET)
		public ModelAndView teamE_resultESFJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}			
			List<commentDTO> comment = new ArrayList<commentDTO>();
			userService.updateViews(testId);
			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		
			

			String mbti = "ESFJ";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/ESFJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ESFP", method = RequestMethod.GET)
		public ModelAndView teamE_resultESFP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}			
			List<commentDTO> comment = new ArrayList<commentDTO>();
			userService.updateViews(testId);
			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		
			

			String mbti = "ESFP";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/ESFP");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ESTP", method = RequestMethod.GET)
		public ModelAndView teamE_resultESTP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}			
			List<commentDTO> comment = new ArrayList<commentDTO>();
			userService.updateViews(testId);
			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		
			

			String mbti = "ESTP";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/ESTP");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/INFJ", method = RequestMethod.GET)
		public ModelAndView teamE_resultINFJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}			
			List<commentDTO> comment = new ArrayList<commentDTO>();
			userService.updateViews(testId);
			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		
			

			String mbti = "INFJ";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/INFJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/INFP", method = RequestMethod.GET)
		public ModelAndView teamE_resultINFP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}			
			List<commentDTO> comment = new ArrayList<commentDTO>();
			userService.updateViews(testId);
			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		
			

			String mbti = "INFP";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/INFP");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/INTJ", method = RequestMethod.GET)
		public ModelAndView teamE_resultINTJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}			
			List<commentDTO> comment = new ArrayList<commentDTO>();
			userService.updateViews(testId);
			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		

			String mbti = "INTJ";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/INTJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/INTP", method = RequestMethod.GET)
		public ModelAndView teamE_resultINTP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}			
			List<commentDTO> comment = new ArrayList<commentDTO>();
			userService.updateViews(testId);
			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		

			String mbti = "INTP";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/INTP");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ISFJ", method = RequestMethod.GET)
		public ModelAndView teamE_resultISFJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}			
			List<commentDTO> comment = new ArrayList<commentDTO>();
			userService.updateViews(testId);
			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		

			String mbti = "ISFJ";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/ISFJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ISFP", method = RequestMethod.GET)
		public ModelAndView teamE_resultISFP(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}			
			List<commentDTO> comment = new ArrayList<commentDTO>();
			userService.updateViews(testId);
			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		
			

			String mbti = "ISFP";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/ISFP");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ISTJ", method = RequestMethod.GET)
		public ModelAndView teamE_resultISTJ(Model model, HttpServletRequest request) {
			
			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");
			
			int testId = 5;
			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}			
			List<commentDTO> comment = new ArrayList<commentDTO>();
			userService.updateViews(testId);
			comment = commentService.getCommentList(testId);
			
			int count2 = comment.size();
			System.out.println(count2);
		
		
			String mbti = "ISTJ";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/ISTJ");
			
			System.out.println(mv);
			
			return mv;
		}
		
		@RequestMapping(value = "/result/ISTP", method = RequestMethod.GET)
		public ModelAndView teamE_result_ISTP(Model model, HttpServletRequest request) {

			ModelAndView mv = new ModelAndView();
			System.out.println("result page loaded");

			if (request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO) request.getSession().getAttribute("tempUser")).getId();
				mv.addObject("userId", userId);
			}
			List<commentDTO> comment = new ArrayList<commentDTO>();
			userService.updateViews(5);
			String mbti = "ISTP";
			mv.addObject("mbti", mbti);
			mv.setViewName("teamE/result/ISTP");

			System.out.println(mv);

			return mv;
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
	          System.out.println("�뜲�씠�꽣 異붽� �떎�뙣 ");
	          
	       }
	       else {
	          System.out.println("�뜲�씠�꽣 異붽� �꽦怨� ");
	       }


	       return "redirect:/";
	    }
		
}
		