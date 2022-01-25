package com.hgu.webcamp.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hgu.webcamp.DAO.userDAO;
import com.hgu.webcamp.DTO.userDTO;


@Service
public class userServiceImpl implements userService {
	
	@Autowired
	userDAO dao;
	
	public int insertUser(userDTO dto) {
		return dao.insertUser(dto);
	}

	public int deleteUser(int id) {
		return dao.deleteUser(id);
	}

	public int updateUser(userDTO dto) {
		return dao.updateUser(dto);
	}

	public userDTO getUser(int id) {
		return dao.getUser(id);
	}
}
