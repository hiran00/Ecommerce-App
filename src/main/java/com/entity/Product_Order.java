package com.entity;

public class Product_Order {
	
	private int id;
	private String orderId;
	private String name;
	private String email;
	private String tel;
	private String fullAdd;
	
	private String pname;
	private String pcategory;
	private String price;
	
	private String payment;
	
	
	
	public String getPname() {
		return pname;
	}



	public void setPname(String pname) {
		this.pname = pname;
	}



	public String getPcategory() {
		return pcategory;
	}



	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}



	public String getPrice() {
		return price;
	}



	public void setPrice(String price) {
		this.price = price;
	}



	public Product_Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public String getOrderId() {
		return orderId;
	}



	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}



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


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getFullAdd() {
		return fullAdd;
	}


	public void setFullAdd(String fullAdd) {
		this.fullAdd = fullAdd;
	}


	public String getPayment() {
		return payment;
	}


	public void setPayment(String payment) {
		this.payment = payment;
	}


	@Override
	public String toString() {
		return "Product_Order [id=" + id + ", name=" + name + ", email=" + email + ", tel=" + tel + ", fullAdd="
				+ fullAdd + ", payment=" + payment + "]";
	}
	
	

}
