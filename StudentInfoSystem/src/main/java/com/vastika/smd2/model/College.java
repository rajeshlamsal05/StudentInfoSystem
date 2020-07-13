package com.vastika.smd2.model;

import java.time.Year;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="college_table")
public class College {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String username;
	private String password;
	@Column(name="college_name")
	private String collegeName;
	@Column(name = "established_date")
	@DateTimeFormat(pattern = "yyyy")
	private Year collegeEstablishedDate;
	@OneToOne(cascade = CascadeType.ALL)
	private CollegeAddress collegeAddress;
	
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

	public Year getCollegeEstablishedDate() {
		return collegeEstablishedDate;
	}
	public void setCollegeEstablishedDate(Year collegeEstablishedDate) {
		this.collegeEstablishedDate = collegeEstablishedDate;
	}
	public CollegeAddress getCollegeAddress() {
		return collegeAddress;
	}
	public void setCollegeAddress(CollegeAddress collegeAddress) {
		this.collegeAddress = collegeAddress;
	}
	
	
	

}
