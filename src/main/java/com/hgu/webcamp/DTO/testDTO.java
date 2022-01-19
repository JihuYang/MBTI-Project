package com.hgu.webcamp.DTO;

import java.sql.Date;

public class testDTO {

	private int id;
	private int testName;
	private Date regDate;

	@Override
	public String toString() {
		return "testDTO [id=" + id + ", testName=" + testName + ", regDate=" + regDate + "]";
	}

}