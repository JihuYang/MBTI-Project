package com.hgu.webcamp;

import com.hgu.webcamp.DTO.userDTO;
import com.hgu.webcamp.Service.*;

import java.sql.SQLException;
import java.util.Map;

import java.io.IOException; 
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
import javax.servlet.http.HttpSession;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LoginController {
	
	@Autowired
	userService userService;
	
	@RequestMapping(value="/snsLogin", method= {RequestMethod.POST})
	@ResponseBody
	public String login_sns(@RequestParam Map<String,String> paramMap, HttpServletRequest request) throws SQLException, Exception{
		
		System.out.println("paramMap:" + paramMap);
		System.out.println("name:" + paramMap.get("name"));
		System.out.println("email:" + paramMap.get("email"));
		
		HttpSession session = request.getSession(true);
		
		userDTO u = new userDTO();
		u.setName(paramMap.get("name"));
		u.setEmail(paramMap.get("email"));
		
		//회원정보가 없는 경우
		if(userService.readUserByEmail(u.getEmail())==0) {
			
			session.setAttribute("tempUser", u);
			session.setAttribute("token", paramMap.get("token"));
			ModelAndView model = new ModelAndView();
			model.addObject("tempUser", u);
			System.out.println("user:"+u.toString());
//			model.setViewName("redirect:/register");
			return "login";
			
			
		//회원정보가 있는 경우
		}else {
			request.getSession().setAttribute("user", u);
			
			int id = userService.readUserByEmail(paramMap.get("email"));
			u.setId(id);
			
			session.setAttribute("tempUser", u);
			session.setAttribute("token", paramMap.get("token"));
			ModelAndView model = new ModelAndView();

			model.addObject("tempUser", u);
			//model.setViewName("index");
			return "home";
		
		}
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutGET(HttpSession session) throws Exception{
		session.invalidate();
		System.out.println("logout");
		return "redirect:/";
	}
}
