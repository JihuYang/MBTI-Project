package com.hgu.webcamp;

import com.hgu.webcamp.DTO.userDTO;
import com.hgu.webcamp.Service.*;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LoginController {
	
	@Autowired
	userService userService;
	
	@RequestMapping(value="/snsLogin", method= {RequestMethod.POST})
	@ResponseBody
	public ModelAndView login_sns(@RequestParam Map<String,String> paramMap,@RequestParam("email") String email, HttpSession session) throws SQLException, Exception{
		ModelAndView model = new ModelAndView();
		System.out.println("paramMap:" + paramMap);
		System.out.println("email:" + paramMap.get("email"));
		userDTO u = new userDTO();
		u.setName(paramMap.get("name"));
		u.setEmail(email);
		
		//회원정보가 없는 경우
		if(userService.readUserByEmail(u.getEmail())==0) {
			System.out.println("DB Insert: " + paramMap.get("name"));
			session.setAttribute("tempUser", paramMap.get("email"));
			session.setAttribute("token", paramMap.get("token"));
			//userService.insertUser(u);
			
			model.addObject("tempUser", u);
			model.setViewName("register");
			
			System.out.println("success!");
			
		//회원정보가 있는 경우
		}else {
			session.setAttribute("tempUser", paramMap.get("email"));
			session.setAttribute("token", paramMap.get("token"));
			System.out.println("success!");
			
			model.setViewName("index");
		}
		return model;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logoutGET(HttpSession session) throws Exception{
		session.invalidate();
		return "redirect:/";
	}
}
