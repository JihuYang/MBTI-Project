package com.hgu.webcamp.DTO;

public class testDTO {

	private int id;
	private int testId;
	private int userId;
	private int result;
	private String type;
	
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
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
	public String toString() {
		return "testDTO [id=" + id + ", testId=" + testId + ", userId=" + userId + ", result=" + result + ", type="
				+ type + "]";
	} 
	

}