package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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


	@Override
	public List<Products> getAllProduct() {
		
		List<Products> list=new ArrayList<Products>();
		Products p=null;
		
		try {
			
			String sql = "select * from products";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				p=new Products();
				p.setpId(rs.getInt(1));
				p.setPname(rs.getString(2));
				p.setPdetails(rs.getString(3));
				p.setPrice(rs.getString(4));
				p.setPcategory(rs.getString(5));
				p.setPimage(rs.getString(6));
				list.add(p);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}


	@Override
	public Products getProductsbyId(int id) {
		
		Products p=null;
		
		try {
			String sql="select * from products where pId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				p=new Products();
				p.setpId(rs.getInt(1));
				p.setPname(rs.getString(2));
				p.setPdetails(rs.getString(3));
				p.setPrice(rs.getString(4));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return p;
	}


	@Override
	public boolean updateEditedProducts(Products p) {
		boolean f=false;
		
		try {
			
			String sql = "update products set pname=?,pdetails=?,price=? where pId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getPname());
			ps.setString(2, p.getPdetails());
			ps.setString(3, p.getPrice());
			ps.setInt(4, p.getpId());
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		return f;
	}


	@Override
	public boolean deleteProducts(int id) {
		
		boolean f=false;
		try {
			
			String sql="delete from products where pId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	

}
