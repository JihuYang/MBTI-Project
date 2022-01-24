package com.hgu.webcamp.DAO;

import java.util.List;

import com.hgu.webcamp.DTO.userDTO;

public interface userDAO {
	/**
	 * Read the information of the user
	 */
	public List<userDTO> getUser(int id);
}