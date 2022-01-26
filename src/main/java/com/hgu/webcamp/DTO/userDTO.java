package com.hgu.webcamp.DTO;

public class userDTO {
	
	private int id;
	private String nickName;
	private String profileImage;
	private String email;
	private String type;
	private int mbti;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getMbti() {
		return mbti;
	}
	public void setMbti(int mbti) {
		this.mbti = mbti;
	}
	
	@Override
	public String toString() {
		return "userDTO [id=" + id + ", nickName=" + nickName + ", profileImage=" + profileImage + ", email=" + email
				+ ", type=" + type + ", mbti=" + mbti + "]";
	}
}
