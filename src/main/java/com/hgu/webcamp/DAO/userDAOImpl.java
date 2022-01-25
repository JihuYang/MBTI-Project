package com.hgu.webcamp.DAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hgu.webcamp.DTO.commentDTO;
import com.hgu.webcamp.DTO.userDTO;

@Repository("userDAO")
public class userDAOImpl implements userDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "user1";
	
	/**
	 * get user information
	 */
	public int insertUser(userDTO dto) {
		int result = sqlSession.insert("user.insertUser", dto);
		return result;
	}
	
	public int deleteUser(int id) {
		int result = sqlSession.delete("user.deleteUser", id);
		return result;
	}
	public int updateUser(userDTO dto) {
		int result = sqlSession.update("user.updateUser", dto);
		return result;
	}
	
	public userDTO getUser(int id) {
		userDTO one = sqlSession.selectOne("user.getUser", id);
		return one;
	}
}
