package com.hgu.webcamp.DTO;

public class userDTO {
	
	
	private int id;
	private String name;
	private String nickName;
	private String profileImage;
	private String email;
	private String type;
	private int mbti;
	private int registration;
	private int admin;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
		return "userDTO [id=" + id + ", name=" + name + ", nickName=" + nickName + ", profileImage=" + profileImage
				+ ", email=" + email + ", type=" + type + ", mbti=" + mbti + "]";
	}
	public int getRegistration() {
		return registration;
	}
	public void setRegistration(int registration) {
		this.registration = registration;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	
	
}
