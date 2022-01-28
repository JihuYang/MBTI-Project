package com.hgu.webcamp.DTO;

import java.sql.Date;

public class userDTO {

	private int id;
	private String name;
	private String nickName;
	private String profileImage;
	private String email;
	private String type;
	private String testName;
	private int result;
	private int testId;
	private int mbti;
	private int registration;
	private int admin;
	private Date regDate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getProfileImage() {
		return profileImage;
	}
	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getType() {
		return type;
	}
	public String getTestName() {
		return testName;
	}
	public void setTestName(String testName) {
		this.testName = testName;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public int getTestId() {
		return testId;
	}
	public void setTestId(int testId) {
		this.testId = testId;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getMbti() {
		return mbti;
	}
	public void setMbti(int mbti) {
		this.mbti = mbti;
	}
	public int getRegistration() {
		return registration;
	}
	public void setRegistration(int registration) {
		this.registration = registration;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "userDTO [id=" + id + ", name=" + name + ", nickName=" + nickName + ", profileImage=" + profileImage
				+ ", email=" + email + ", type=" + type + ", testName=" + testName + ", result=" + result + ", testId="
				+ testId + ", mbti=" + mbti + ", registration=" + registration + ", admin=" + admin + ", regDate="
				+ regDate + "]";
	}
	
}
