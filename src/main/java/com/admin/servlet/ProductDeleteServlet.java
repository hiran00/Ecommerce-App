package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProductsDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete")
public class ProductDeleteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			int id=Integer.parseInt(req.getParameter("id"));
			ProductsDAOImpl dao=new ProductsDAOImpl(DBConnect.getConn());
			boolean f= dao.deleteProducts(id);
			HttpSession session = req.getSession();
			
			if(f)
			{
				session.setAttribute("succMsg", "Product Delete Successful!");
				resp.sendRedirect("admin/all_products.jsp");
				
			} else {
				
				session.setAttribute("failedMsg", "Something Went Wrong!");
				resp.sendRedirect("admin/all_products.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();			
		}
	}
	
	

}
