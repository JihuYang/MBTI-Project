package com.hgu.webcamp.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hgu.webcamp.DTO.commentDTO;
import com.hgu.webcamp.DTO.userDTO;

@Repository("userDAO")
public class userDAOImpl implements userDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "user";
	
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
	
	public List<userDTO> readAllMbti() {
		List<userDTO> mbtiList = sqlSession.selectList(namespace + ".readAllMbti");
		return mbtiList;
	}
	public int updateViews(int id) {
		int result = sqlSession.update("user.updateViews", id);
		return result;
	}
	public int readViews(int id) {
		int views = sqlSession.selectOne("user.readViews", id);
		return views;
	}
}
