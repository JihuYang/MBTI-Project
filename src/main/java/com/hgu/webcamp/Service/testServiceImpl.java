package com.hgu.webcamp.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hgu.webcamp.DAO.testDAO;
import com.hgu.webcamp.DTO.testDTO;

@Service
public class testServiceImpl implements testService{
	
	@Autowired
	testDAO dao;
	
	@Override
	public int insertTest(testDTO dto) {
		// TODO Auto-generated method stub
		return dao.insertTest(dto);
	}
	

	@Override
	public int readMbtiIdByType(String type) {
		return dao.readMbtiIdByType(type);
	}

}
 