package com.hgu.webcamp.DTO;

import java.sql.Date;

public class testDTO {

	private int id;
	private int testId;
	private int userId;
	private String result;
	
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
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	@Override
	public String toString() {
		return "testDTO [id=" + id + ", testId=" + testId + ", userId=" + userId + ", result=" + result + "]";
	} 
	

}