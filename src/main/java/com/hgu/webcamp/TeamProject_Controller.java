package com.hgu.webcamp;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hgu.webcamp.DTO.commentDTO;
import com.hgu.webcamp.DTO.testDTO;
import com.hgu.webcamp.DTO.userDTO;
import com.hgu.webcamp.Service.userService;
import com.hgu.webcamp.Service.testService;
/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/")

public class TeamProject_Controller {

	@Autowired
	userService userService;
	
	@Autowired
	testService testService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView teamProject_index(Model model) {
		
		ModelAndView mv = new ModelAndView();
		
		System.out.println("index page loaded");
		int[] views = {0,0,0,0,0};
		
		for(int i=0; i<5; i++)
			views[i] = userService.readViews(i+1);

		mv.addObject("views", views);
		mv.setViewName("index");
		return mv;
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public ModelAndView teamProject_myPage(HttpServletRequest request) {
		
		userDTO dto = new userDTO();
		
		List<userDTO> mbtiList = userService.readAllMbti();
	
		
		
		
		
		
		int id = ((userDTO)request.getSession().getAttribute("tempUser")).getId();

		System.out.println("userId in controller: " + id);
	
		dto=userService.getUser(id);
		List<userDTO> savedTest = userService.readSavedTest(id);
		
				
		ModelAndView mv = new ModelAndView();
		//System.out.println("dto: " + dto);
		mv.addObject("info", dto);
		mv.addObject("savedTest", savedTest);
		mv.addObject("mbtiList", mbtiList);
		mv.setViewName("/myPage");
		for(userDTO test : savedTest) {
			System.out.println(test.toString());
		}
		System.out.println("my page loaded");
		
		return mv;
	}
	
//	@RequestMapping(value = "/profile", method = RequestMethod.POST)
//	public String profile(HttpServletRequest request) throws UnsupportedEncodingException {
//	
//			request.setCharacterEncoding("utf-8");
//			userDTO dto = new userDTO();
//			
//			dto = (userDTO) request.getSession().getAttribute("tempUser");
//
////			String nickname = request.getParameter("nickName");
////			String mbtiTemp = request.getParameter("mbti");
////			String idTemp = request.getParameter("id");
////			
////			System.out.println("왜안돼 ");
////			
////			System.out.println(mbtiTemp);
////			System.out.println(nickname);
////			System.out.println(idTemp);
////	
//			//int mbti =  Integer.parseInt(mbtiTemp);
////			int id = ((userDTO)request.getSession().getAttribute("tempUser")).getId();
////			System.out.println(id);
//			
////			dto.setNickName("sanna");
////			dto.setMbti(1);
////			dto.setId(id);
//			
//			int i = userService.updateProfile(dto);
//			
//			if(i==0) {
//				System.out.println("데이터 수정 실패");
//				
//			}
//			else {
//				System.out.println("데이터 수정 성공 ");
//			}
//			
//			
//			return "redirect:/myPage";
//		}
//		

	
	@RequestMapping(value = "/myPage/delete_ok/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id) {
		int i = testService.deleteTestResult(id);
		
		if(i == 0) System.out.println(id+"Error! delete Failed");
		else System.out.println("테스트 결과 삭제 완료.");
		
		return "redirect:/myPage";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView teamProject_register(Model model) {
		
		List<userDTO> mbtiList = userService.readAllMbti();
//		for(userDTO mbti : mbtiList) {
//			System.out.println(mbti.toString());
//		}
		System.out.println("register page loaded");
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("mbtiList", mbtiList);
		mv.setViewName("/register");
		
		return mv;
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/login", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView teamProject_login(ModelAndView model, HttpServletRequest request) {
		if(request.getSession().getAttribute("tempUser") != null) {
			userDTO u = new userDTO();
			u = (userDTO) request.getSession().getAttribute("tempUser");
			//�쉶�썝 �젙蹂닿� �뾾�뒗 寃쎌슦
			if(userService.readUserByEmail(u.getEmail())==0) {
				model.setViewName("redirect:/register");
				return model;
			}
			//�쉶�썝 �젙蹂닿� �엳�뒗 寃쎌슦
			
			model.setViewName("redirect:/index");
			return model;
		}
		//System.out.println(userName);
		System.out.println("login loaded");
		
		model.setViewName("login");
		return model;
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/alert", method = RequestMethod.GET)
	public String teamProject_alert(ModelAndView model, HttpServletRequest request) {
		
//		String msg = (String)request.getAttribute("msg");
//		String url = (String)request.getAttribute("url");
//		
		System.out.println("alert page loaded");

		
		return "/alert";
	}
	
	@RequestMapping(value = "/alert2", method = RequestMethod.GET)
	public String teamProject_alert2(ModelAndView model, HttpServletRequest request) {
		
//		String msg = (String)request.getAttribute("msg");
//		String url = (String)request.getAttribute("url");
//		
		System.out.println("alert2 page loaded");

		
		return "/alert2";
	}

}
