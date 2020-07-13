package com.vastika.smd2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vastika.smd2.model.College;
import com.vastika.smd2.repository.CollegeRepository;

@Service
@Transactional
public class CollegeServiceImpl implements CollegeService {
	
	@Autowired
	private CollegeRepository collegeRepository;

	@Override
	public void saveCollegeInfo(College college) {
		collegeRepository.saveCollegeInfo(college);
		
	}

	@Override
	public List<College> getAllCollegeInfo() {
		// TODO Auto-generated method stub
		return collegeRepository.getAllCollegeInfo();
	}

	@Override
	public College getCollegeInfoById(int id) {
		// TODO Auto-generated method stub
		return collegeRepository.getCollegeInfoById(id);
	}

	@Override
	public void deleteCollegeInfo(int id) {
		// TODO Auto-generated method stub
		collegeRepository.deleteCollegeInfo(id);
		
	}

	@Override
	public void updateCollegeInfo(College college) {
		// TODO Auto-generated method stub
		collegeRepository.updateCollegeInfo(college);
		
	}

	@Override
	public College getCollegeByUsernameAndPassword(String username, String password) {
		// TODO Auto-generated method stub
		return collegeRepository.getCollegeByUsernameAndPassword(username, password);
	}

}
