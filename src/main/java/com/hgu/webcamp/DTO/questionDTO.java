package com.hgu.webcamp.DTO;

import java.sql.Date;

public class questionDTO {
	
	private int id;
	private String question;
	private Date regDate;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "questionDTO [id=" + id + ", question=" + question + ", regDate=" + regDate + "]";
	}

}