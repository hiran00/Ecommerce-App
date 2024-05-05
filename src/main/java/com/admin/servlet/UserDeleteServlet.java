package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;

@WebServlet("/userdelete")
public class UserDeleteServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			int id=Integer.parseInt(req.getParameter("id"));
			UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
			boolean f= dao.deleteUsers(id);
			HttpSession session = req.getSession();
			
			if(f)
			{
				session.setAttribute("succMsg", "User Delete Successful!");
				resp.sendRedirect("admin/customers.jsp");
				
			} else {
				
				session.setAttribute("failedMsg", "Something Went Wrong!");
				resp.sendRedirect("admin/customers.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();			
		}
	}
	
}
