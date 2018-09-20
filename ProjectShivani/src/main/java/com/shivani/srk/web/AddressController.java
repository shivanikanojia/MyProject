package com.shivani.srk.web;

import java.io.IOException;
//import java.util.HashMap;
//import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shivani.srk.model.AddressClass;

public class AddressController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Map<String, String> mapAdd = new HashMap<String, String>();
		
		
		String flatNo = request.getParameter("flatno");
		String flatName = request.getParameter("flatname");
		String area = request.getParameter("area");
		String landmark = request.getParameter("landmark");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String country = request.getParameter("country");
		String pincode = request.getParameter("pincode");
		
		AddressClass add = new AddressClass();
	
//		add.setFlatNo(mapAdd.put("flaNo", request.getParameter("flatno")));
//		add.setFlatName(mapAdd.put("flatName", request.getParameter("flatname")));
//		add.setArea(mapAdd.put("area", request.getParameter("area")));
//		add.setLandmark(mapAdd.put("landmark", request.getParameter("landmark")));
//		add.setCity(mapAdd.put("city", request.getParameter("city")));
//		add.setState(mapAdd.put("state", request.getParameter("state")));
//		add.setCountry(mapAdd.put("country", request.getParameter("country")));
//		add.setPincode(mapAdd.put("pincode", request.getParameter("pincode")));
		
		add.setFlatNo(flatNo);
		add.setFlatName(flatName);
		add.setArea(area);
		add.setLandmark(landmark);
		add.setCity(city);
		add.setState(state);
		add.setCountry(country);
		add.setPincode(pincode);
		
		
		request.setAttribute("AddressClass", add);
		RequestDispatcher rd = request.getRequestDispatcher("ShowData.jsp");

		rd.forward(request, response);
			
	}

}
