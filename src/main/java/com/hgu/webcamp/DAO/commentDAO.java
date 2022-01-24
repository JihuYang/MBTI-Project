package com.hgu.webcamp.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hgu.webcamp.DTO.commentDTO;


@Repository
public class commentDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	
	public int insertComment(commentDTO dto) {
		int result = sqlSession.insert("mapper.insertComment", dto);
		return result;
	}
	
	public int deleteComment(int id) {
		int result = sqlSession.delete("mapper.deleteComment", id);
		return result;
	}
	public int updateComment(commentDTO dto) {
		int result = sqlSession.update("mapper.updateComment", dto);
		return result;
	}
	
	public commentDTO getComment(int seq) {
		commentDTO one = sqlSession.selectOne("mapper.getComment", seq);
		return one;

	}
	public List<commentDTO> getCommentList() {
		List<commentDTO> list = sqlSession.selectList("mapper.getCommentList");
		return list;
	}


}