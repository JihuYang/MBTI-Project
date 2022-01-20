package com.hgu.webcamp.Service;

import java.util.List;

import com.hgu.webcamp.DTO.questionDTO;

public interface questionService {
	
	/**
	 * Read the questions of the test
	 */
	public List<questionDTO> readQuestion(int testId);

}
