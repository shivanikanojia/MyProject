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

response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");// for http 1.1 or greater
response.setHeader("Pragma", "no-cache");//for http 1.0
response.setHeader("Expires", "0");//for proxies		

if(session.getAttribute("username")==null){
	
	response.sendRedirect("Login.jsp");
}
%>
<h1>Welcome...!!</h1>
<br/>
<form action="Logout" method="post">
<input type="submit" value="Logout">
</form>
</body>
</html>