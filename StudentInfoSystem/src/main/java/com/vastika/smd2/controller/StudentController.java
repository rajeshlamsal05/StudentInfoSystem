package com.vastika.smd2.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.vastika.smd2.model.Student;
import com.vastika.smd2.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value = "/add_student", method = RequestMethod.GET)
	public String getAddStudentForm() {
		return "addStudent";
	}
	@RequestMapping(value = "/save_student", method = RequestMethod.POST)
	public String saveStudentInfo(@ModelAttribute Student student) {
		studentService.saveStudentInfo(student);
		return "redirect:/list_student";
	}

	/*
	 * @RequestMapping(value = "/edit_student", method = RequestMethod.GET) public
	 * String getEditStudentInfoForm(@RequestParam int id, Model model) {
	 * model.addAttribute("student", studentService.getStudentInfoById(id)); return
	 * "editStudent"; }
	 * 
	 * @RequestMapping(value = "/update_student", method = RequestMethod.POST)
	 * public String updateStudentInfo(@ModelAttribute Student student) {
	 * studentService.updateStudentInfo(student); return "redirect:/list_student";
	 */
	//}
	@RequestMapping(value = "/list_student", method = RequestMethod.GET)
	public String getAllStudentInfo(Model model) {
		model.addAttribute("students", studentService.getAllStudentInfo());
		return "listStudent";
	}

	/*
	 * @RequestMapping(value = "/delete_student", method = RequestMethod.GET) public
	 * String deleteStudentInfo(@RequestParam int id) {
	 * studentService.deleteStudentInfo(id); return "redirect:/list_student"; }
	 */
	@RequestMapping(value="/reset_password", method = RequestMethod.GET)
	public String resetPasswordForm() {
		return "resetPassword";
	}
	@RequestMapping(value = "/update_password", method = RequestMethod.POST)
	public String updatePassword(@RequestParam String password, @RequestParam String newPassword, HttpSession session, Model model) {
		Student student = studentService.getStudentInfoById((Integer)session.getAttribute("id"));
		if(student.getPassword().equals(password)) {
			student.setPassword(newPassword);
			studentService.updateStudentInfo(student);
			return "redirect:/list_student";
		}
		model.addAttribute("passwordNotMatched", "Current password do not match");
		return "resetPassworld";
	}
	
}
