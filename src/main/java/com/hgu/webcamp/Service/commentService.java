package com.hgu.webcamp.Service;

import java.util.List;

import com.hgu.webcamp.DTO.commentDTO;


public interface commentService {
	public int insertComment(commentDTO dto);

	public int deleteComment(int id);

	public int updateComment(commentDTO dto);

	public commentDTO getComment(int seq);

	public List<commentDTO> getCommentList();
}
