<%@page import="com.shivani.srk.model.ImageClass"%>
<%@page import="com.shivani.srk.model.DataClass"%>
<%@page import="com.shivani.srk.model.AddressClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
DataClass dc = (DataClass)request.getAttribute("DataClass");
out.println(dc);

/* AddressClass add = (AddressClass)request.getAttribute("AddressClass");
out.println(add);

ImageClass img = (ImageClass)request.getAttribute("ImageClass");
out.println(img);
 */
 
 %>

</body>
</html>