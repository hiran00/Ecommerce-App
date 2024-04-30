package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.User;


public class UserDAOImpl implements UserDAO{

	
	private Connection conn;

	public UserDAOImpl(Connection conn) {
		this.conn = conn;
	}
	
	@Override
	public boolean userRegister(User us) {
		
		boolean f=false;
		
		try {
			String sql="insert into user(name,email,tel,password) values(?,?,?,?)";
			PreparedStatement ps=(PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getTel());
			ps.setString(4, us.getPassword());
			
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
	public User login(String email, String password) {
		User us=null;
		
		try {
			
			String sql="select * from user where email=? and password=?";
			PreparedStatement ps=(PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				us=new User();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setTel(rs.getString(4));
				us.setPassword(rs.getString(5));
				us.setAddress(rs.getString(6));
				us.setLandmark(rs.getString(7));
				us.setCity(rs.getString(8));
				us.setState(rs.getString(9));
				us.setPincode(rs.getString(10));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return us;			
	}
	
	
	@Override
	public List<User> getAllUsers() {
		
		List<User> list=new ArrayList<User>();
		User u=null;
		
		try {
			
			String sql = "select * from user";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				u=new User();
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setTel(rs.getString(4));
				list.add(u);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}

	@Override
	public boolean deleteUsers(int id) {
		
		boolean f=false;
		try {
			
			String sql="delete from user where id=?";
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
