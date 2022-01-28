package com.hgu.webcamp.Service;

import com.hgu.webcamp.DTO.testDTO;

public interface testService {

	public int insertTest(testDTO dto);
	public int readMbtiIdByType(String type);
	
}
