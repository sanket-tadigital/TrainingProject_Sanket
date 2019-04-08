package com.tadigital.ecommerce.vendor.entity;

public class Vendor {
	private int id;
	private String name;
	private String email;
	private String password;
	private long lastlogin;

	public int getid() {
		return id;
	}

	public String getname() {
		return name;
	}

	public String getemail() {
		return email;
	}

	public String getpassword() {
		return password;
	}
	
	public long getlastlogin() {
		return lastlogin;
	}


	public void setid(int id) {
		this.id = id;
	}

	public void setname(String name) {
		this.name = name;
	}

	public void setemail(String email) {
		this.email = email;
	}

	public void setpassword(String password) {
		this.password = password;
	}
	
	public void setlastlogin(long lastlogin) {
		this.lastlogin = lastlogin;
	}
}
