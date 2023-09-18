<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String userid=request.getParameter("userid"); 
String password=request.getParameter("password"); 
Boolean a=false;
try
{
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chari?characterEncoding=utf8","root","Keshav3chary@"); 
PreparedStatement pst = con.prepareStatement("select password from logindata where userid='"+userid+"' and password='"+password+"'");
    ResultSet rs= pst.executeQuery();
    if(rs.next())
	{
		response.sendRedirect("Home.html");
	}
    else
	{
		response.sendRedirect("error.html");
	}
}
catch(Exception e)
	{
		out.println(e);
	
	}
%>

