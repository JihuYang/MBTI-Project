package com.hgu.webcamp.DAO;

import com.hgu.webcamp.DTO.testDTO;

public interface testDAO {
	
	public int insertTest(testDTO dto);
	public int readMbtiIdByType(String type);
	
	public int deleteTestResult(int id);
	
	

}
