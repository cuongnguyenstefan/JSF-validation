package edu.mum.waa.model;

import java.util.Date;

import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Entry {
	
	@Size(min=6, max=50, message="Username should be between 6 to 50 characters")
	private String username;
	
	@NotEmpty(message="Address can not be empty")
	private String address;
	
	@Past(message="Birthday must be in the past")
	private Date birthday;
	
	@Size(min=6, max=50, message="Password should be between 6 to 50 characters")
	private String password;
	
	@NotEmpty(message="Choose a gender")
	private String sex;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

}
