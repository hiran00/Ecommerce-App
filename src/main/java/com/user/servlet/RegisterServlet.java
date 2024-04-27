package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.DAO.UserDAOImpl;
import com.entity.User;
import com.mysql.jdbc.Connection;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	private static final Connection conn = null;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String tel=req.getParameter("tel");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
			/* System.out.println(name+""+email+""+tel+""+password+""+check); */
			
			User us=new User();
			us.setName(name);
			us.setEmail(email);
			us.setTel(tel);
			us.setPassword(password);
			
			HttpSession session=req.getSession();
			
			if (check!=null)
			{
				UserDAOImpl dao = new UserDAOImpl((Connection) DBConnect.getConn());
				boolean f=dao.userRegister(us);									
				
				if(f)
				{
					//System.out.println("Registration Successful!");
					session.setAttribute("succMsg","Registration Successful!");
					resp.sendRedirect("register.jsp");
				}
				else
				{
					//System.out.println("Something Went Wrong On Server!");
					session.setAttribute("failedMsg","Something Went Wrong On Server!");
					resp.sendRedirect("register.jsp");
				}
			} else
			{
				//System.out.println("Please accept our privacy policy by checking the box.");
				session.setAttribute("failedMsg","Please accept our privacy policy by checking the box.");
				resp.sendRedirect("register.jsp");
			}
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	
	
	
}
