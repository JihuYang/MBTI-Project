package com.hgu.webcamp.Service;

import java.util.List;

import com.hgu.webcamp.DTO.userDTO;


public interface userService {
	public int insertUser(userDTO dto);

	public int deleteUser(int id);

	public int updateUser(userDTO dto);

	public userDTO getUser(int id);
	
	public List<userDTO> readAllMbti();

}
