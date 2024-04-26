package com.DAO;

import com.entity.user;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class UserDAOImpl implements UserDAO{

	
	private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean userRegister(user us) {
		
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
	
	
	
	
	
	
}
