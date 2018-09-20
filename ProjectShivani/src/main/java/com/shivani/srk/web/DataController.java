package com.shivani.srk.web;

import java.io.IOException;
//import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shivani.srk.model.DataClass;
import com.shivani.srk.web.dao.DataDao;

public class DataController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String contact = request.getParameter("contact");
		DataDao dao = new DataDao();
		DataClass dc = new DataClass();

		dc.setLastname(lastname);
		dc.setFirstname(firstname);
		dc.setUsername(username);
		dc.setPassword(password);
		dc.setEmail(email);
		
		if ("Female".equals(gender)) {
			dc.setGender("Female");
		} else {
			dc.setGender("Male");
		}
		SimpleDateFormat format = new SimpleDateFormat("MM-dd-yyyy");
		
		Date date = null;

		try {
		    date = format.parse(request.getParameter("date"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		dc.setDate(date);
		dc.setContact(contact);

		dao.connect();
		dao.addData(dc);

		request.setAttribute("DataClass", dc);
		RequestDispatcher rd = request.getRequestDispatcher("ShowData.jsp");

		rd.forward(request, response);
	}

}