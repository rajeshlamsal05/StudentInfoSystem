package com.vastika.smd2.repository;

import java.util.List;

import com.vastika.smd2.model.College;

public interface CollegeRepository {
	
	void saveCollegeInfo(College college);
	
	List<College>getAllCollegeInfo();
	
	College getCollegeInfoById(int id);
	
	void deleteCollegeInfo(int id);
	
	void updateCollegeInfo(College college);
	
	College getCollegeByUsernameAndPassword(String username, String password);

}
