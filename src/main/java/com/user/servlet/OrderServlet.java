package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DAO.ProductOrderImpl;
import com.DAO.ProductsDAOImpl;
import com.DB.DBConnect;
import com.entity.Cart;
import com.entity.Product_Order;


@WebServlet ("/order")
public class OrderServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			HttpSession session=req.getSession();
			
			int id=Integer.parseInt(req.getParameter("id"));
			
			String name=req.getParameter("uname");
			String email=req.getParameter("email");
			String tel=req.getParameter("tel");
			String address=req.getParameter("address");
			String landmark=req.getParameter("landmark");
			String city=req.getParameter("city");
			String state=req.getParameter("state");
			String pincode=req.getParameter("pincode");
			String payment=req.getParameter("payment");
			
			String fullAdd=address+","+landmark+","+city+","+state+","+pincode;
			
			/* System.out.println(name+" "+email+" "+tel+" "+fullAdd+" "+payment); */
			
			
			CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
			
			List<Cart> plist=dao.getProductByUser(id);
			ProductOrderImpl dao2=new ProductOrderImpl(DBConnect.getConn());
			
			
			
			Product_Order o = null; 
			
			ArrayList<Product_Order> orderList=new ArrayList<Product_Order>();
			Random r=new Random();
			for(Cart c:plist)
			{
				o =new Product_Order();
				o.setOrderId("PRODUCT-ORD-00"+ r.nextInt(1000));
				o.setName(name);
				o.setEmail(email);
				o.setTel(tel);
				o.setFullAdd(fullAdd);
				o.setPname(c.getPname());
				o.setPcategory(c.getPcategory());
				o.setPrice(c.getPrice()+"");
				o.setPayment(payment);
				orderList.add(o);
				
			}
			
			
			
			if("noselect".equals(payment))
			{
				session.setAttribute("failedMsg", "Please Choose Payment Method");
				resp.sendRedirect("cart_and_checkout.jsp");
				
			} else {
				
				boolean f=dao2.saveOrder(orderList);
				
				if(f)
				{
					resp.sendRedirect("order_success.jsp");
					
				}else {
					session.setAttribute("failedMsg", "Your Order Failed!");
					resp.sendRedirect("cart_and_checkout.jsp");
				}
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	

}
