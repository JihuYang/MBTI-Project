package com.hgu.webcamp.DAO;

import java.util.List;

import com.hgu.webcamp.DTO.questionDTO;

public interface questionDAO {
	/**
	 * Read the questions of the test
	 */
	public List<questionDTO> readQuestion(int testId);
	/**
	 * Read the 1 questions and 2 answers of that question
	 */
	public List<questionDTO> readQuestionAndAnswer(int testId, int questionNum, int questionId);
}
