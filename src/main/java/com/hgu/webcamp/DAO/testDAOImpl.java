package com.hgu.webcamp.DAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hgu.webcamp.DTO.testDTO;


@Repository("testDAO")
public class testDAOImpl implements testDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "savedTest";
	
	@Override
	public int insertTest(testDTO dto) {
		int result = sqlSession.insert(namespace + ".insertTest", dto);
		return result;
	}
	
	@Override
	public int readMbtiIdByType(String type) {
		int result = sqlSession.selectOne(namespace + ".readMbtiIdByType", type);
		return result;
	}

	@Override
	public int deleteTestResult(int id) {
		int result = sqlSession.delete(namespace + ".deleteTestResult", id);
		return result;
	}

}
