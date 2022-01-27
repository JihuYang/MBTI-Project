package com.hgu.webcamp;

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
	userServiceImpl userService;
	
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
       if(i==0) System.out.println("�쉶�썝媛��엯 �떎�뙣!") ;
       else System.out.println("�쉶�썝媛��엯 �꽦怨�!") ;

       return "redirect:index" ;
    }*/
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
//	@RequestMapping(value = "/login", method = RequestMethod.GET)
//	public String login() {
//		return "login";
//	}
	
	 @RequestMapping(value="/loginOk", method=RequestMethod.POST)
	   public String loginCheck(HttpSession session, userDTO dto) {
	      String returnURL = "";
	      if(session.getAttribute("login") != null) {
	         session.removeAttribute("login");
	      }
	      
//	      userDTO logindto = service.getUser(dto);
//	      if ( logindto != null ) {
//	         System.out.println("濡쒓렇�씤 �꽦怨�!");
//	         session.setAttribute("login", logindto);
//	         returnURL = "redirect:/board/list";
//	      } else {
//	         System.out.println("濡쒓렇�씤 �떎�뙣!");
//	         returnURL = "redirect:/login/login";
//	      }
	      return returnURL;
	   }
	 
	 @RequestMapping(value="/logout")
	 public String logout(HttpSession session) {
		 session.invalidate();
		 return "redirect:/index";
	 }
	 
	 @RequestMapping(value = "/loginPost", method = {RequestMethod.POST, RequestMethod.GET})
     public String addUser(userDTO dto) { 
        int i = userService.insertUser(dto);

        if(i==0) {
        	return "redirect:index" ;
        }
        else {
        	return "forward:index" ;
        }
     }
	 

}
