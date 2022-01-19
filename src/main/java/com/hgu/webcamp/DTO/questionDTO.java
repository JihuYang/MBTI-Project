package com.hgu.webcamp.DTO;

import java.sql.Date;

public class questionDTO {

	private int id;
	private String question;
	private Date regDate;

	@Override
	public String toString() {
		return "questionDTO [id=" + id + ", question=" + question + ", regDate=" + regDate + "]";
	}

}