package com.shivani.srk.web.dao;

import java.io.InputStream;
import java.sql.Blob;
//import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;
//import java.sql.Statement;

import javax.servlet.http.Part;

import com.shivani.srk.model.DataClass;
//import com.shivani.srk.model.ImageClass;
 
public class DataDao {

	Connection con = null;

	public void connect() {
		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivani", "root", "root");
		} catch (Exception e) {

			e.printStackTrace();

		}
	}

	public void addData(DataClass d) {

		String query = "insert into users(First_Name, Last_Name, User_Name, Password, Email, Gender, DOB, Contact) values(?,?,?,?,?,?,?,?);";
		PreparedStatement pst;
		try {
			
			Date dob = new Date(d.getDate().getTime());
			pst = con.prepareStatement(query);
			pst.setString(1, d.getFirstname());
			pst.setString(2, d.getLastname());
			pst.setString(3, d.getUsername());
			pst.setString(4, d.getPassword());
			pst.setString(5, d.getEmail());
			
			if("Male".equals(d.getGender())) {
				pst.setInt(6, 0);
			} else {
				pst.setInt(6, 1);
			}
			
			pst.setDate(7, dob);
			pst.setString(8, d.getContact());
			pst.executeUpdate();
			
			con.commit();
			pst.close();
			
			con.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	public void addImage(InputStream is) throws SQLException {
		
		String query="insert into images(Image) values(?)";
		PreparedStatement pst = con.prepareStatement(query);
		pst.setBlob(1, is);
		pst.executeUpdate();
		con.commit();
		pst.close();
		con.close();
	}
}