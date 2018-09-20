package com.shivani.srk.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.shivani.srk.model.DataClass;

public class RetrievalDao {
	
	Connection con = null;

	public void connect() {
		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivani", "root", "root");
		} catch (Exception e) {

			e.printStackTrace();

		}
	}
	
	
	public void fetchData(DataClass dc) throws SQLException {
		
		String query ="Select First_Name, Last_Name, Email, Gender, DOB, Contact from users where User_Name=?";
		PreparedStatement pst = con.prepareStatement(query);
		pst.setString(1, dc.getUsername());
		
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
			dc.setFirstname(rs.getString("First_Name"));
			dc.setLastname(rs.getString("Last_Name"));
			dc.setEmail(rs.getString("Email"));
			if(rs.getInt("Gender") == 0) {
				dc.setGender("Male");
			} else {
				dc.setGender("Female");
			}
			dc.setDate(rs.getDate("DOB"));
			dc.setContact(rs.getString("Contact"));
		}
	rs.close();
	pst.close();
	con.close();
	}
	
	public boolean logIn(String username, String password)throws NullPointerException {

		String query = "select * from users where User_Name=? and Password=?";
		
		PreparedStatement prep;
		try {
			prep = con.prepareStatement(query);
			
			prep.setString(1, username);
			prep.setString(2, password);
			
			ResultSet rs= prep.executeQuery();
			if (rs.next()) {
				return true;
			}
			rs.close();
			prep.close();
			con.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	
		
		
		return false;

	}

}
