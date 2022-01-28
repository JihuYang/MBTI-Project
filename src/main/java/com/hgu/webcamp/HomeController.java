package com.hgu.webcamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hgu.webcamp.DTO.commentDTO;
import com.hgu.webcamp.Service.userService;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	userService userService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Model model) {
		ModelAndView mv = new ModelAndView();
		commentDTO dto = new commentDTO();
		System.out.println("WELCOME TO MBTI WEB SITE");
		dto.toString();
		
		int[] views = {0,0,0,0,0};
		
		for(int i=0; i<5; i++)
			views[i] = userService.readViews(i+1);

		mv.addObject("views", views);
		mv.setViewName("index");
		return mv;
	}
	
}
