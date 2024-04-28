package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Products;


public class ProductsDAOImpl implements ProductsDAO{

	private Connection conn;
		
	public ProductsDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	
	@Override
	public boolean addProducts(Products p) {
		
		boolean f=false;
		try {
			
			String sql = "insert into products(pname,pdetails,price,pcategory,pimage) values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getPname());
			ps.setString(2, p.getPdetails());
			ps.setString(3, p.getPrice());
			ps.setString(4, p.getPcategory());
			ps.setString(5, p.getPimage());
			
			int i=ps.executeUpdate();
			
			if (i==1) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	
	

}
