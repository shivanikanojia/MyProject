package com.shivani.srk.web;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.shivani.srk.web.dao.DataDao;

@MultipartConfig(maxFileSize = 16177216)

public class ImageController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Part image = request.getPart("file");
		InputStream is = null;
		try {
			is = image.getInputStream();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		DataDao dd = new DataDao();
		
		dd.connect();
		try {
			dd.addImage(is);
		} catch (SQLException e) {
		
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
		
	
	}

}
