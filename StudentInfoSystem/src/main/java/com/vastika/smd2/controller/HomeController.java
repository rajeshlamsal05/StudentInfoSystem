package com.vastika.smd2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping(value= {"/", "/choose"})
	public String homePage() {
		return "choose";
	}
	
	@RequestMapping(value="/student_home")
	public String getStudentHomePage() {
		return "sHome";
	}
	
	@RequestMapping(value="/admin_home")
	public String getAdminHomePage() {
		return "aHome";
	}

}
