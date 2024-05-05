package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
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



	@Override
	public List<Product_Order> getAllOrder() {
		
		List<Product_Order> list=new ArrayList<Product_Order>();
		Product_Order o=null;
		
		try {
			
			String sql = "select * from product_order ";
			PreparedStatement ps=(PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				o=new Product_Order();
				o.setId(rs.getInt(1));
				o.setOrderId(rs.getString(2));
				o.setName(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFullAdd(rs.getString(5));
				o.setTel(rs.getString(6));
				o.setPname(rs.getString(7));
				o.setPrice(rs.getString(8));
				o.setPayment(rs.getString(9));
				list.add(o);
									
			}
			
			
			} catch (Exception e) {
				e.printStackTrace();
			}
				
		return list;
	}

	
}
