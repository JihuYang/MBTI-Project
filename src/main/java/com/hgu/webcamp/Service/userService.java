package com.hgu.webcamp.Service;

import com.hgu.webcamp.DTO.userDTO;


public interface userService {
//	public int insertUser(userDTO dto);

	public int deleteUser(int id);

	public int updateUser(userDTO dto);

	public userDTO getUser(int id);
}
