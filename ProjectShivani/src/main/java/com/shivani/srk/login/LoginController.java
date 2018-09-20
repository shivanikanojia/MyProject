package com.shivani.srk.login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shivani.srk.model.DataClass;
import com.shivani.srk.web.dao.RetrievalDao;

public class LoginController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NullPointerException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		RetrievalDao rd = new RetrievalDao();
		rd.connect();
		
		DataClass dc = new DataClass();
		dc.setUsername(username);
		dc.setPassword(password);
		
		if(rd.logIn(username, password)){
			
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			try {
				rd.fetchData(dc);
				request.setAttribute("FirstName", dc.getFirstname());
				request.setAttribute("LastName", dc.getLastname());
				request.setAttribute("Email", dc.getEmail());
				request.setAttribute("DOB", dc.getDate());
				request.setAttribute("Gender", dc.getGender());
				request.setAttribute("Contact", dc.getContact());
				
				RequestDispatcher req = request.getRequestDispatcher("DashBoard.jsp");
				req.forward(request, response);
				
//				response.sendRedirect("DashBoard.jsp");	
				
//				request.setAttribute("DataClass", dc);
//				RequestDispatcher reqdis = request.getRequestDispatcher("RetrieveUser.jsp");
//				reqdis.forward(request, response);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
						
			 response.sendRedirect("Login.jsp");
		}
		
	}

}
