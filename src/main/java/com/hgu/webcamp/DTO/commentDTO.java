package com.hgu.webcamp.DTO;

import java.util.Date;

public class commentDTO {
	private int id;
	private int testId;
	private int userId;
	private String userNickname;
	private String userName;
	private String comment;
	private Date regDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTestId() {
		return testId;
	}
	public void setTestId(int testId) {
		this.testId = testId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		System.out.println("commentDTO [id=" + id + ", testId=" + testId + ", userId=" + userId + ", userNickname=" + userNickname
				+ ", userName=" + userName + ", comment=" + comment + ", regDate=" + regDate + "]");
		
		return "commentDTO [id=" + id + ", testId=" + testId + ", userId=" + userId + ", userNickname=" + userNickname
				+ ", userName=" + userName + ", comment=" + comment + ", regDate=" + regDate + "]";
	}
	
	
}
