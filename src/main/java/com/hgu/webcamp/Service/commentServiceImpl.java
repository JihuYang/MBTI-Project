package com.hgu.webcamp.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hgu.webcamp.DAO.commentDAO;
import com.hgu.webcamp.DTO.commentDTO;




@Service
public class commentServiceImpl implements commentService {
	
	@Autowired
	commentDAO dao;
	
	public int insertComment(commentDTO dto) {
		return dao.insertComment(dto);
	}

	public int deleteComment(int id) {
		return dao.deleteComment(id);
	}

	public int updateComment(commentDTO dto) {
		return dao.updateComment(dto);
	}

	public commentDTO getComment(int seq) {
		return dao.getComment(seq);
	}

	public List<commentDTO> getCommentList(int testId){
		return dao.getCommentList(testId);
	}
}
