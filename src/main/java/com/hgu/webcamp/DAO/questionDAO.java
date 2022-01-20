package com.hgu.webcamp.DAO;

import java.util.List;

import com.hgu.webcamp.DTO.questionDTO;

public interface questionDAO {
	public List<questionDTO> readQuestion(int testId);
}
