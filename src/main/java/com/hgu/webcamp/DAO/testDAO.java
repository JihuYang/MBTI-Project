package com.hgu.webcamp.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hgu.webcamp.DTO.testDTO;

@Repository("testDAO")
public class testDAO {
	@Autowired
	SqlSession sqlSession;
	
	
	public int insertComment(testDTO dto) {
		int result = sqlSession.insert("comment.insertComment", dto);
		return result;
	}
}
