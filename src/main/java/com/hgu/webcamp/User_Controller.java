package com.hgu.webcamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hgu.webcamp.DTO.userDTO;
import com.hgu.webcamp.Service.*;
import com.hgu.webcamp.DAO.*;


/**
 * Handles requests for the application board.
 */
@Controller
public class User_Controller {
	
	@Autowired
	userService userService;
	
//	@Autowired
//	userDAO service;
	
//	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	/**
     * Create User
     */
  /**
    @RequestMapping(value = "/createUser", method = RequestMethod.POST)
    public String addUser(userDTO dto) { 
       int i = userDAO.insertUser(dto) ;
       if(i==0) System.out.println("占쎌돳占쎌뜚揶쏉옙占쎌뿯 占쎈뼄占쎈솭!") ;
       else System.out.println("占쎌돳占쎌뜚揶쏉옙占쎌뿯 占쎄쉐�⑨옙!") ;

       return "redirect:index" ;
    }*/
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	 @RequestMapping(value="/loginOk", method=RequestMethod.POST)
	   public String loginCheck(HttpSession session, userDTO dto) {
	      String returnURL = "";
	      if(session.getAttribute("login") != null) {
	         session.removeAttribute("login");
	      }
	      
//	      userDTO logindto = service.getUser(dto);
//	      if ( logindto != null ) {
//	         System.out.println("嚥≪뮄�젃占쎌뵥 占쎄쉐�⑨옙!");
//	         session.setAttribute("login", logindto);
//	         returnURL = "redirect:/board/list";
//	      } else {
//	         System.out.println("嚥≪뮄�젃占쎌뵥 占쎈뼄占쎈솭!");
//	         returnURL = "redirect:/login/login";
//	      }
	      return returnURL;
	   }
	 
	 @RequestMapping(value="/logout")
	 public String logout(HttpSession session) {
		 session.invalidate();
		 return "redirect:/index";
	 }
	 
	 @RequestMapping(value = "/loginPost", method=RequestMethod.POST)
     public String addUser(userDTO dto, HttpServletRequest request) { 

		String email  = ((userDTO)request.getSession().getAttribute("tempUser")).getEmail();
		String name  = ((userDTO)request.getSession().getAttribute("tempUser")).getName();
		String nickName = request.getParameter("nickname");
		String mbtiTemp = request.getParameter("mbti");
		int mbti =  Integer.parseInt(mbtiTemp);
		System.out.println("mbti Temp, mbti: " + mbtiTemp + mbti + email + name + nickName);
		
		dto.setEmail(email) ;
		dto.setName(name);
		dto.setMbti(mbti);
		dto.setNickName(nickName);
		dto.setRegistration(1);
		dto.setAdmin(1);
		
        int i = userService.insertUser(dto);
        if(i==0) {
        	return "redirect:login" ;
        }
        else {
        	return "forward:login" ;
        }
     }
	 

}
