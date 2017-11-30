package com.spring.jdh.model;

public class LoginVO {
	
	String fk_login_id;	// 아이디
	String login_pwd;	// 비밀번호
	String login_name;	// 별명
	
	
	
	public LoginVO(){}
	
	public LoginVO(String fk_login_id, String login_pwd, String login_name) {
		
		this.fk_login_id = fk_login_id;
		this.login_pwd = login_pwd;
		this.login_name = login_name;
	}

	public String getFk_login_id() {
		return fk_login_id;
	}

	public void setFk_login_id(String fk_login_id) {
		this.fk_login_id = fk_login_id;
	}

	public String getLogin_pwd() {
		return login_pwd;
	}

	public void setLogin_pwd(String login_pwd) {
		this.login_pwd = login_pwd;
	}

	public String getLogin_name() {
		return login_name;
	}

	public void setLogin_name(String login_name) {
		this.login_name = login_name;
	}
	
	
	
}
