package com.hgu.webcamp.DTO;

import java.util.Date;

public class commentDTO {


	private int id;
	private int testId;
	private String nickname;
	private String name;
	private String comment;
	private String type;
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
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "commentDTO [id=" + id + ", testId=" + testId + ", nickname=" + nickname + ", name=" + name
				+ ", comment=" + comment + ", type=" + type + ", regDate=" + regDate + "]";
	}

	
	
}
