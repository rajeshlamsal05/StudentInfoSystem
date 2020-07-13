package com.vastika.smd2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.handler.UserRoleAuthorizationInterceptor;

import com.vastika.smd2.model.Student;
import com.vastika.smd2.repository.StudentRepository;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public void saveStudentInfo(Student student) {
		studentRepository.saveStudentInfo(student);
		
	}

	@Override
	public List<Student> getAllStudentInfo() {
		
		return studentRepository.getAllStudentInfo();
	}

	@Override
	public Student getStudentInfoById(int id) {
		
		return studentRepository.getStudentInfoById(id);
	}

	@Override
	public void deleteStudentInfo(int id) {

		studentRepository.deleteStudentInfo(id);
	}

	@Override
	public void updateStudentInfo(Student student) {
		
		studentRepository.updateStudentInfo(student);
	}

	@Override
	public Student getStudentByUserNameAndPassword(String username, String password) {
		
		return studentRepository.getStudentByUserNameAndPassword(username, password);
	}

}
