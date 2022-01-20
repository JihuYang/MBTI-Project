package com.hgu.webcamp.DAO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hgu.webcamp.DTO.questionDTO;

@Repository("questionDAO")
public class questionDAOImpl implements questionDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "question";
	
	/**
	 * Read the questions of the test
	 */
	public List<questionDTO> readQuestion(int testId){
		
		List<questionDTO> question = new ArrayList<questionDTO>();
		
		Map<String, Object> questionParam = new HashMap<String, Object>();
		
		questionParam.put("testId", testId);
		
		question = sqlSession.selectList(namespace+".readQuestion", questionParam);
		
		return question;
	}
	

}
