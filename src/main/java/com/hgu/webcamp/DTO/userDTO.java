package com.hgu.webcamp.DTO;

public class userDTO {
	
	private int id;
	private String nickname;
	private String profileImage;
	private String email;
	private int mbti;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getProfileImage() {
		return profileImage;
	}
	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getMbti() {
		return mbti;
	}
	public void setMbti(int mbti) {
		this.mbti = mbti;
	}
}
