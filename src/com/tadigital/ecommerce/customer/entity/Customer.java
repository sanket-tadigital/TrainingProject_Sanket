package com.tadigital.ecommerce.customer.entity;

public class Customer {
	private int id;
	private String fname;
	private String lname;
	private String address;
	private String gender;
	private long zip;
	private String city;
	private String country;
	private String state;
	private String email;
	private String password;
	private long contact;
	
	/*public Customer(int id, String fname, String lname, String address, String city, String gender, long zip, String country, String state, String email, String password, long contact)
	{
		this.id=id;
		this.fname=fname;
		this.lname=lname;
		this.address=address;
		this.gender=gender;
		this.zip=zip;
		this.country=country;
		this.state=state;
		this.city=city;
		this.email=email;
		this.password=password;
		this.contact=contact;
	}*/
	
	public int getid() {
		return id;
	}
	
	public String getfname() {
		return fname;
	}
	
	public String getlname() {
		return lname;
	}
	
	public String getemail() {
		return email;
	}
	
	public String getpassword() {
		return password;
	}
	
	public void setfname(String fname)
	{
		this.fname=fname;
	}
	public void setid(int id)
	{
		this.id=id;
	}
	public void setlname(String lname)
	{
		this.lname=lname;
	}
	
	public void setemail(String email)
	{
		this.email=email;
	}
	
	public void setpassword(String password)
	{
		this.password=password;
	}
}
