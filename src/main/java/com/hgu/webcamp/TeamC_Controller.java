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
@RequestMapping(value = "/teamC")
public class TeamC_Controller {
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
	public ModelAndView teamC_start(Model model) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("start page loaded");
		
		int testId = 3;
		int views = 0;
		
		views = userService.readViews(testId);

		mv.addObject("views", views);
		mv.setViewName("teamC/start");
		return mv;
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/question", method = RequestMethod.GET)
	public ModelAndView teamC_question(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		System.out.println("question page loaded");
		
		
		int questionNum= 1; // question 테이블에서 문제 
		int questionId = 1 ; // answer 테이블에서 문제 
		int testId = 3; // 테스트이름
		int check = 1;
		List<questionDTO> question = questionService.readQuestionAndAnswer(testId, questionNum, questionId);
		userService.updateViews(testId);
		
		mv.addObject("questions", question);	
		mv.addObject("check", check);
		mv.setViewName("teamC/question");
		
		System.out.println(mv);
		return mv;
	}


	//로딩을 위한 mapping 
	@RequestMapping(value ="/loading", method = RequestMethod.GET)
	public String teamC_loading(Model model) {
		System.out.println("loading page loaded");
		
		return "teamC/loading";
	}
	@RequestMapping(value = "/saved", method = RequestMethod.POST)
	public String savedOK(HttpServletRequest request) throws ParseException, UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");

		int testId = 3;
		
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
			System.out.println("테스트 저장 실패 ");
			
		}
		else {
			System.out.println("테스트 저장 성공");
		}


		return "redirect:/myPage";
	}

		// ajax로 값을 주고받는 Controller 
		@RequestMapping(value = "/ajax", method = RequestMethod.POST)
		public @ResponseBody List<questionDTO> ajax_question(@RequestParam("questionNum") int questionNum) {
							
			int testId = 3;
			int questionId = 1;
			// ajax로부터 받은 문제 번호를 1증가 시키고 questionId에도 해당 값 부여   
			questionNum++;
			questionId = questionNum;
			
			
			// 데이터베이스에서 testId, questionNum, questionId 에 따른 값 가져오기   
			List<questionDTO> question = questionService.readQuestionAndAnswer(testId, questionNum, questionId);
			// ajax로 보내기 
			return question;
			}	

	
	
		@RequestMapping(value = "/addok", method = RequestMethod.POST)
		public String addPostOK(HttpServletRequest request) throws ParseException, UnsupportedEncodingException {
			request.setCharacterEncoding("utf-8");
			commentDTO dto = new commentDTO();

			if(request.getSession().getAttribute("tempUser") != null) {
				int userId = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
				dto.setUserId(userId);

			}
			int testId = 3;
			
			SimpleDateFormat f = new SimpleDateFormat("yyyy/MM/dd kk:mm:ss");
	    	Date regDate=f.parse(f.format(new Date()));
			
			String comment = request.getParameter("comment");
			String path = request.getParameter("path");
			
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


			return "redirect:/teamC/result"+path;
			
		}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOK(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");

		String comment = request.getParameter("comment");
		int id = Integer.parseInt(request.getParameter("id"));
		String path = request.getParameter("path");
		
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
		return "redirect:/teamC/result"+path;
	}
	@RequestMapping(value = "/delete_ok/{id}/{mbti}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id,@PathVariable("mbti") String mbti) {
		int i = commentService.deleteComment(id);
		
		if(i == 0) System.out.println("Error! delete Failed");
		else System.out.println("댓글 삭제 완료.");
		
		
		//String path = mbti.split("/")[6].substring(0,4);
		

		return "redirect:/teamC/result/"+mbti;
	}
	@RequestMapping(value = "/result/ENFJ", method = RequestMethod.GET)
	public ModelAndView teamC_result_ENFJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/ENFJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ENFP", method = RequestMethod.GET)
	public ModelAndView teamC_result_ENFP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/ENFP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ENTJ", method = RequestMethod.GET)
	public ModelAndView teamC_result_ENTJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/ENTJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ENTP", method = RequestMethod.GET)
	public ModelAndView teamC_result_ENTP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/ENTP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ESFJ", method = RequestMethod.GET)
	public ModelAndView teamC_result_ESFJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/ESFJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ESFP", method = RequestMethod.GET)
	public ModelAndView teamC_result_ESFP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/ESFP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ESTJ", method = RequestMethod.GET)
	public ModelAndView teamC_result_ESTJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/ESTJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ESTP", method = RequestMethod.GET)
	public ModelAndView teamC_result_ESTP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/ESTP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/INFJ", method = RequestMethod.GET)
	public ModelAndView teamC_result_INFJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/INFJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/INFP", method = RequestMethod.GET)
	public ModelAndView teamC_result_INFP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/INFP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/INTJ", method = RequestMethod.GET)
	public ModelAndView teamC_result_INTJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/INTJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/INTP", method = RequestMethod.GET)
	public ModelAndView teamC_result_INTP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/INTP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ISFJ", method = RequestMethod.GET)
	public ModelAndView teamC_result_ISFJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/ISFJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ISFP", method = RequestMethod.GET)
	public ModelAndView teamC_result_ISFP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/ISFP");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ISTJ", method = RequestMethod.GET)
	public ModelAndView teamC_result_ISTJ(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/ISTJ");
		
		System.out.println(mv);
		
		return mv;
	}
	@RequestMapping(value = "/result/ISTP", method = RequestMethod.GET)
	public ModelAndView teamC_result_ISTP(Model model, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("result page loaded");
		
		int testId = 3;
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
		mv.setViewName("teamC/result/ISTP");
		
		System.out.println(mv);
		
		return mv;
	}
	

	
}