package com.vastika.smd2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.vastika.smd2.model.Student;
import com.vastika.smd2.service.CollegeService;
import com.vastika.smd2.service.StudentService;

@Controller
public class AdministratorController {
	@Autowired
	private CollegeService collegeService;
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value = "/list_student_for_admin", method = RequestMethod.GET)
	public String getAllStudentInfo(Model model) {
		model.addAttribute("students", studentService.getAllStudentInfo());
		return "listStudent1";
	}
	
	@RequestMapping(value = "/edit_student", method = RequestMethod.GET)
	public String getEditStudentInfoForm(@RequestParam int id, Model model) {
		model.addAttribute("student", studentService.getStudentInfoById(id));
		return "editStudent";
	}
	@RequestMapping(value = "/update_student", method = RequestMethod.POST)
	public String updateStudentInfo(@ModelAttribute Student student) {
		studentService.updateStudentInfo(student);
		return "redirect:/list_student_for_admin";
		
	}
	
	@RequestMapping(value = "/delete_student", method = RequestMethod.GET)
	public String deleteStudentInfo(@RequestParam int id) {
		studentService.deleteStudentInfo(id);
		return "redirect:/list_student_for_admin";
	}
	
	
	

}
