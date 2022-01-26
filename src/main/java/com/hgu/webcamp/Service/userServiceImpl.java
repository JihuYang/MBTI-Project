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

	public int deleteUser(int id) {
		return dao.deleteUser(id);
	}

	public int updateUser(userDTO dto) {
		return dao.updateUser(dto);
	}

	public userDTO getUser(int id) {
		return dao.getUser(id);
	}
	
	public List<userDTO> readAllMbti() {
		return dao.readAllMbti();
	}

	public int insertUser(userDTO dto) {
		return dao.insertUser(dto);
	}
	
	@Override
	public int readUserByEmail(String email) {
		Map<String, Object> userListParam = new HashMap<String, Object>();
		userListParam.put("email", email);
		int id = 0;
		try {
			id = sqlSession.selectOne("com.hgu.webcamp.DAO.userDAOInterface"+".readUserByEmail",userListParam);
		} catch (NullPointerException e) {
			System.out.println(e);
			id = 0;
		}
		return id;
	};

}
