package com.hgu.webcamp.DAO;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.hgu.webcamp.DTO.userDTO;

public class userDAOImpl implements userDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "user1";
	
	/**
	 * get user information
	 */
	public List<userDTO> getUser(int id) {
		List<userDTO> user = new ArrayList<userDTO>();
		return user;
		
	}
}
