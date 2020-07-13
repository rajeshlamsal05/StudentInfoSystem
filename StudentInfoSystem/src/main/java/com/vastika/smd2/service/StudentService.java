package com.vastika.smd2.service;

import java.util.List;

import com.vastika.smd2.model.Student;

public interface StudentService {
	
void saveStudentInfo(Student student);
	
	List<Student>getAllStudentInfo();
	
	Student getStudentInfoById(int id);
	
	void deleteStudentInfo(int id);
	
	void updateStudentInfo(Student student);
	
	Student getStudentByUserNameAndPassword(String username, String password);

}
