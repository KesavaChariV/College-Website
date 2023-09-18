<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("name"); 
String email=request.getParameter("email");
int phone=Integer.parseInt(request.getParameter("phone")); 
String message=request.getParameter("message");
try
{
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chari?characterEncoding=utf8","root","Keshav3chary@"); 
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into contact(name,email,phone,messsage)values('"+name+"','"+email+"','"+phone+"','"+message+"');");
	conn.close();
}
catch(Exception e)
	{
		out.println(e);
	
	}
%>