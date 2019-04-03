package com.tadigital.ecommerce.customer.entity;

public class Customer {
	private int id;
	private String fname;
	private String lname;
	private String address;
	private String gender;
	private String zip;
	private String city;
	private String country;
	private String state;
	private String email;
	private String password;
	private String contact;
	
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
	public String getgender() {
		return gender;
	}
	public String getaddress() {
		return address;
	}
	public String getzip() {
		return zip;
	}
	public String getcontact() {
		return contact;
	}
	public String getcity() {
		return city;
	}
	public String getcountry() {
		return country;
	}
	public String getstate() {
		return state;
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
	public void setgender(String gender) {
		this.gender=gender;
	}
	public void setaddress(String address) {
		this.address=address;
	}
	public void setzip(String zip) {
		this.zip=zip;
	}
	public void setcontact(String contact) {
		this.contact=contact;
	}
	public void setcity(String city) {
		this.city=city;
	}
	public void setcountry(String country) {
		this.country=country;
	}
	public void setstate(String state) {
		this.state=state;
	}
}
