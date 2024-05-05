package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.ProductsDAOImpl;
import com.DB.DBConnect;
import com.entity.Products;

@WebServlet("/add_products")
@MultipartConfig
public class ProductsAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String pname = req.getParameter("pname");
			String pdetails = req.getParameter("pdetails"); 
			String price = req.getParameter("price");
			String pcategory = req.getParameter("pcategory");
			String availability = req.getParameter("availability");
			Part part = req.getPart("pimage");
			String fileName = part.getSubmittedFileName();
			
			
			Products p = new Products(pname, pdetails, price, pcategory, availability, fileName);
			
			ProductsDAOImpl dao = new ProductsDAOImpl(DBConnect.getConn());
			
			boolean f=dao.addProducts(p);
			  
			HttpSession session = req.getSession();
			  
			  if(f) {
			  
				  	String path = getServletContext().getRealPath("")+"images";
					File file = new File(path);
					part.write(path + File.separator + fileName);
			  
			  
					session.setAttribute("succMsg", "Product Added Successfully!");
					resp.sendRedirect("admin/add_products.jsp");
			  
			  } else {
			  
			  session.setAttribute("failedMsg", "Something Went Wrong!");
			  resp.sendRedirect("admin/add_products.jsp"); }
			 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	

}
