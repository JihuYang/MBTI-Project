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
		int result = sqlSession.insert("comment.insertComment", dto);
		return result;
	}
	
	public int deleteComment(int id) {
		int result = sqlSession.delete("comment.deleteComment", id);
		return result;
	}
	public int updateComment(commentDTO dto) {
		int result = sqlSession.update("comment.updateComment", dto);
		return result;
	}
	
	public commentDTO getComment(int seq) {
		commentDTO one = sqlSession.selectOne("comment.getComment", seq);
		return one;

	}
	public List<commentDTO> getCommentList() {
		List<commentDTO> list = sqlSession.selectList("comment.getCommentList");
		return list;
	}


}