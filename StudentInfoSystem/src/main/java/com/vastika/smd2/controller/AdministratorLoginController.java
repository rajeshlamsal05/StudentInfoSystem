package com.vastika.smd2.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vastika.smd2.model.College;
import com.vastika.smd2.service.CollegeService;

@Controller
public class AdministratorLoginController {
	
	private final CollegeService collegeService;
	@Autowired
	public AdministratorLoginController(CollegeService collegeService) {
		this.collegeService = collegeService;
	}
	@GetMapping("/admin_login")
	public String getLoginForm() {
		return "aLogin";
	}
	@PostMapping("/admin_login")
	public String clogin(@RequestParam String username, @RequestParam String password, HttpSession session, Model model) {
		College college = collegeService.getCollegeByUsernameAndPassword(username, password);
		
		if(college!=null) {
			session.setAttribute("username", username);
			session.setAttribute("id", college.getId());
			return "redirect:/admin_home";
		}
		model.addAttribute("loginfailed", "Wrong username or password!");
		return "aLogin";
	}
	@GetMapping("/logout_admin")
	public String getLoginForm(Model model, HttpSession session) {
		session.invalidate();
		model.addAttribute("logoutmessage", "You are successfully logged out!");
		return "aLogin";
	}

}
