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
import com.entity.Products;

@WebServlet("/edit_products")
public class EditProductServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			int id=Integer.parseInt(req.getParameter("id"));
			String pname = req.getParameter("pname");
			String pdetails = req.getParameter("pdetails"); 
			String price = req.getParameter("price");
			
			Products p=new Products();
			p.setpId(id);
			p.setPname(pname);
			p.setPdetails(pdetails);
			p.setPrice(price);
			
			ProductsDAOImpl dao=new ProductsDAOImpl(DBConnect.getConn());
			boolean f=dao.updateEditedProducts(p);
			
			HttpSession session = req.getSession();
			
			if(f)
			{
				session.setAttribute("succMsg", "Product Update Successful!");
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
