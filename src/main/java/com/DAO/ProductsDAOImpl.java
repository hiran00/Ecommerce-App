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
			
			String sql = "insert into products(pname,pdetails,price,pcategory,availability,pimage) values(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getPname());
			ps.setString(2, p.getPdetails());
			ps.setString(3, p.getPrice());
			ps.setString(4, p.getPcategory());
			ps.setString(5, p.getAvailability());
			ps.setString(6, p.getPimage());
			
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
				p.setAvailability(rs.getString(6));
				p.setPimage(rs.getString(7));
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
				p.setAvailability(rs.getString(5));
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
			
			String sql = "update products set pname=?,pdetails=?,price=?,availability=? where pId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getPname());
			ps.setString(2, p.getPdetails());
			ps.setString(3, p.getPrice());
			ps.setString(4, p.getAvailability());
			ps.setInt(5, p.getpId());
			
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


	@Override
	public List<Products> getSamsung() {
		
		List<Products> list = new ArrayList<Products>();
		Products p=null;
		
		try {
			
			String sql = "select * from products where pcategory=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,"samsung");
			
			ResultSet rs = ps.executeQuery();
			
			int i=1;
			while (rs.next() && i <= 4)
			{
				p=new Products();
				p.setpId(rs.getInt(1));
				p.setPname(rs.getString(2));
				p.setPdetails(rs.getString(3));
				p.setPrice(rs.getString(4));
				p.setPcategory(rs.getString(5));
				p.setAvailability(rs.getString(6));
				p.setPimage(rs.getString(7));
				list.add(p);
				i++;
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return list;
	}


	@Override
	public List<Products> getApple() {
		
		List<Products> list = new ArrayList<Products>();
		Products p2=null;
		
		try {
			
			String sql = "select * from products where pcategory=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,"apple");
			
			ResultSet rs = ps.executeQuery();
			
			int i=1;
			while (rs.next() && i <= 4)
			{
				p2=new Products();
				p2.setpId(rs.getInt(1));
				p2.setPname(rs.getString(2));
				p2.setPdetails(rs.getString(3));
				p2.setPrice(rs.getString(4));
				p2.setPcategory(rs.getString(5));
				p2.setAvailability(rs.getString(6));
				p2.setPimage(rs.getString(7));
				list.add(p2);
				i++;
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return list;
	}


	@Override
	public List<Products> getAccessories() {
		
		List<Products> list = new ArrayList<Products>();
		Products p3=null;
		
		try {
			
			String sql = "select * from products where pcategory=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,"accessories");
			
			ResultSet rs = ps.executeQuery();
			
			int i=1;
			while (rs.next() && i <= 4)
			{
				p3=new Products();
				p3.setpId(rs.getInt(1));
				p3.setPname(rs.getString(2));
				p3.setPdetails(rs.getString(3));
				p3.setPrice(rs.getString(4));
				p3.setPcategory(rs.getString(5));
				p3.setAvailability(rs.getString(6));
				p3.setPimage(rs.getString(7));
				list.add(p3);
				i++;
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	
		return list;
	}


	@Override
	public List<Products> getAllSamsung() {
		
		List<Products> list = new ArrayList<Products>();
		Products p=null;
		
		try {
			
			String sql = "select * from products where pcategory=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,"samsung");
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next())
			{
				p=new Products();
				p.setpId(rs.getInt(1));
				p.setPname(rs.getString(2));
				p.setPdetails(rs.getString(3));
				p.setPrice(rs.getString(4));
				p.setPcategory(rs.getString(5));
				p.setAvailability(rs.getString(6));
				p.setPimage(rs.getString(7));
				list.add(p);
				
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return list;
	}
	
	

}



