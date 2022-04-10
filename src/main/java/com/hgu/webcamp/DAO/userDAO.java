package com.hgu.webcamp.DAO;

import java.util.List;

import com.hgu.webcamp.DTO.userDTO;

public interface userDAO {
	/**
	 * Read the information of the user
	 */
	public int insertUser(userDTO dto);
	public int deleteUser(int id);
	public int updateUser(userDTO dto);
	public userDTO getUser(int id);
	public List<userDTO> readAllMbti();
	public int updateViews(int id);
	public int readViews(int id);
	public int readUserByEmail(String email);
	public List<userDTO> readSavedTest(int userId);
	public int upadateProfile(userDTO dto);

}