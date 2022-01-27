package com.hgu.webcamp.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hgu.webcamp.DAO.userDAO;
import com.hgu.webcamp.DTO.userDTO;


@Service
public class userServiceImpl implements userService {
	
	@Autowired
	userDAO dao;
	
	SqlSession sqlSession;
	
	@Override
	public int deleteUser(int id) {
		return dao.deleteUser(id);
	}
	
	@Override
	public int updateUser(userDTO dto) {
		return dao.updateUser(dto);
	}
	
	@Override
	public userDTO getUser(int id) {
		return dao.getUser(id);
	}
	
	@Override
	public List<userDTO> readAllMbti() {
		return dao.readAllMbti();
	}
	
	@Override
	public int insertUser(userDTO dto) {
		return dao.insertUser(dto);
	}
	
	@Override
	public int readUserByEmail(String email) {
		return dao.readUserByEmail(email);
	};
	
	public int updateViews(int id) {
		return dao.updateViews(id);
	}
	
	public int readViews(int id) {
		return dao.readViews(id);
	}

}
