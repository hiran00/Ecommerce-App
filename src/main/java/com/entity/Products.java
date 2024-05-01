package com.entity;

public class Products {
	
	private int pId;
	private String pname;
	private String pdetails;
	private String price;
	private String pcategory;
	private String availability;
	private String pimage;

	public Products() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Products(String pname, String pdetails, String price, String pcategory, String availability, String pimage) {
		super();
		this.pname = pname;
		this.pdetails = pdetails;
		this.price = price;
		this.pcategory = pcategory;
		this.availability = availability;
		this.pimage = pimage;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPdetails() {
		return pdetails;
	}

	public void setPdetails(String pdetails) {
		this.pdetails = pdetails;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPcategory() {
		return pcategory;
	}

	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}
	
	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	@Override
	public String toString() {
		return "Products [pId=" + pId + ", pname=" + pname + ", pdetails=" + pdetails + ", price=" + price
				+ ", pcategory=" + pcategory + ", availability=" + availability + " pimage=" + pimage + "]";
	}
	
	
	

	
}
