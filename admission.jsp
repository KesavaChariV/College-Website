<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String gender=request.getParameter("gender");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String password=request.getParameter("password");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chari?characterEncoding=utf8","root","Keshav3chary@");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into stuDetails(fname,lname,gender,phone,email,password)values('"+fname+"','"+lname+"','"+gender+"','"+phone+"','"+email+"','"+password+"')");
   response.sendRedirect("admission.html");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>