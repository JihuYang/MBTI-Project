package com.hgu.webcamp.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.view.RedirectView;

import com.hgu.webcamp.DTO.userDTO;
import com.hgu.webcamp.Service.*;


@Component
public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	@Autowired
	userService userService;
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		HttpSession session = request.getSession();
		userDTO userDTO = (userDTO) session.getAttribute("tempUser");
		int id = 0;
		id = userService.readUserByEmail(userDTO.getEmail());
		if(id > 0) {
			userDTO.setId(id);
			session.setAttribute("user", userDTO);
			modelAndView.setView(new RedirectView("/",true));
		}
		super.postHandle(request, response, handler, modelAndView);
	}

}