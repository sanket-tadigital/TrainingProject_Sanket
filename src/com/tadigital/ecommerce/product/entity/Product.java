package com.tadigital.ecommerce.product.entity;

public class Product {
	private int id;
	private int vendor_id;
	private String name;
	private String category;
	private String subcategory;
	private String description;
	private long price;
	private String filename1;
	private String filename2;
	private String filename3;
	private String filename4;
	private String filename5;
	
	public void setId(int id)
	{
		this.id=id;
	}
	public void setvenddor_id(int vendor_id)
	{
		this.vendor_id=vendor_id;
	}
	public void setName(String name)
	{
		this.name=name;
	}
	
	public void setCategory(String category)
	{
		this.category=category;
	}
	public void setSubCategory(String subcategory)
	{
		this.subcategory=subcategory;
	}
	public void setPrice(long price)
	{
		this.price=price;
	}
	
	public void setDescription(String description)
	{
		this.description=description;
	}
	
	public void setPicture1(String filename1)
	{
		this.filename1=filename1;
	}
	
	public void setPicture2(String filename2)
	{
		this.filename2=filename2;
	}
	
	public void setPicture3(String filename3)
	{
		this.filename3=filename3;
	}
	
	public void setPicture4(String filename4)
	{
		this.filename4=filename4;
	}
	
	public void setPicture5(String filename5)
	{
		this.filename5=filename5;
	}
	
	public int getId()
	{
		return id;
	}
	public int getvendor_id()
	{
		return vendor_id;
	}
	public String getCategory()
	{
		return category;
	}
	public String getSubCategory()
	{
		return subcategory;
	}
	public String getName()
	{
		return name;
	}
	
	public String getDescription()
	{
		return description;
	}
	
	public long getPrice()
	{
		return price;
	}
	
	public String getPicture1()
	{
		return filename1;
	}
	public String getPicture2()
	{
		return filename2;
	}
	public String getPicture3()
	{
		return filename3;
	}
	public String getPicture4()
	{
		return filename4;
	}
	public String getPicture5()
	{
		return filename5;
	}
}
