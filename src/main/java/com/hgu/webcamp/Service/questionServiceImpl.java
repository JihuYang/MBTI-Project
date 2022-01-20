package com.hgu.webcamp.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hgu.webcamp.DTO.questionDTO;
import com.hgu.webcamp.DAO.questionDAO;


@Service
public class questionServiceImpl implements questionService{
	
	@Autowired
	questionDAO questionDAO ;
	
	/**
	 * Read the questions of the test
	 */
	@Override
	public List<questionDTO> readQuestion(int testId){
		List<questionDTO> question = questionDAO.readQuestion(testId);
		return question;
	}
}
