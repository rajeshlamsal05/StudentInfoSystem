package com.vastika.smd2.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vastika.smd2.model.Student;
import com.vastika.smd2.service.StudentService;

@Controller
public class StudentLoginController {
	@Autowired
	private final StudentService studentService;
	
	
	public StudentLoginController(StudentService studentService) {
		this.studentService = studentService;
	}
	
	@GetMapping("/student_login")
	public String getLoginForm() {
		return "sLogin";
	}
	
	@PostMapping("/student_login")
	public String login(@RequestParam String username, @RequestParam String password, HttpSession session, Model model) {
		Student student = studentService.getStudentByUserNameAndPassword(username, password);
		
		if(student!=null) {
			session.setAttribute("username", username);
			session.setAttribute("id", student.getId());
			return "redirect:/student_home";
		}
		model.addAttribute("loginfailed", "Wrong username or password!");
		return "sLogin";
	}
	
	@GetMapping("/logout_student")
	public String getLoginForm(Model model, HttpSession session) {
		session.invalidate();
		model.addAttribute("logoutmessage", "You are successfully logged out!");
		return "sLogin";
	}

}
