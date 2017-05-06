package com.user.spring.JSON;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@RequestMapping(value="index.htm",method=RequestMethod.GET)
	private ModelAndView ShowIndexPage(){
		
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="addMovie.htm",method=RequestMethod.GET)
	private ModelAndView addPage(){
		return new ModelAndView("addMovie");
	}
	@RequestMapping(value="viewMovie.htm",method=RequestMethod.GET)
	private ModelAndView showMovie(){
		return new ModelAndView("viewMovie");
	}
}
