package com.wpt.bean;



public class User {
    private Integer uid;

    private String username;
    private String nickname;
    private String password;

    private String email;

    private String phone;

    private String qq;

    private String role;

    private String time;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role == null ? null : role.trim();
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", email=" + email + ", phone=" + phone
				+ ", qq=" + qq + ", role=" + role + ", time=" + time + "]";
	}

	public String getNickname() {
		return username;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
    
}