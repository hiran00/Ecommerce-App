package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.List;

import com.entity.Product_Order;
import com.mysql.jdbc.PreparedStatement;

public class ProductOrderImpl implements ProductOrderDAO{
	
	private Connection conn;
	
	public ProductOrderImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	

	@Override
	public boolean saveOrder(List<Product_Order> plist) {
		
		boolean  f=false;
		try {
			
			String sql = "INSERT INTO product_order (order_id, uname, email, address, tel, pname, pcategory, price, payment) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			conn.setAutoCommit(false);
			PreparedStatement ps=(PreparedStatement) conn.prepareStatement(sql);
			
			for(Product_Order p:plist)
			{
				ps.setString(1, p.getOrderId());
				ps.setString(2, p.getName());
				ps.setString(3, p.getEmail());
				ps.setString(4, p.getFullAdd());
				ps.setString(5, p.getTel());
				ps.setString(6, p.getPname());
				ps.setString(7, p.getPcategory());
				ps.setString(8, p.getPrice());
				ps.setString(9, p.getPayment());
				ps.addBatch();
				
			}
			
			int[] count =ps.executeBatch();
			conn.commit();
			f=true;
			conn.setAutoCommit(true);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		
		}
		
		
		
		
		return f;
	}

	
}
