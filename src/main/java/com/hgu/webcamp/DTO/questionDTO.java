package com.hgu.webcamp.DTO;

import java.sql.Date;

public class questionDTO {
	
	private int id;
	private int questionId;
	private int questionNum;
	private String question;
	private String answer;
	private String result;
	private Date regDate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getQuestionId() {
		return questionId;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	public int getQuestionNum() {
		return questionNum;
	}
	public void setQuestionNum(int questionNum) {
		this.questionNum = questionNum;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "questionDTO [id=" + id + ", questionId=" + questionId + ", questionNum=" + questionNum + ", question="
				+ question + ", answer=" + answer + ", result=" + result + ", regDate=" + regDate + "]";
	}
}