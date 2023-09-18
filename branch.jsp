<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<% String[] name=new String[500];
int ind1=0,l=0; %>
<%@page import="java.sql.*,java.util.*"%>
<%
String branch=request.getParameter("branch"); 
try
{
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chari?characterEncoding=utf8","root","Keshav3chary@"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from stuBranch where branch='"+branch+"'"); 
while (rs.next())
{
    String b = rs.getString(1);
    String c=rs.getString(2);
    String a=rs.getString(3);
    name[ind1]=b;
    ind1++;
    name[ind1]=c;
    ind1++;
    name[ind1]=a;
    ind1++;
    }
}
catch(Exception e)
	{
		out.println(e);
	
	}
%>
<html>
    <style>
        body{
            background-color: #000000;
        }
        table {
            border:1px solid slateblue;
            width: 100%;
        }
    th, td {
            text-align: left;
            border-bottom: 1px solid #00ff99;
        }
    th {
            background-color: #ff00d9;
        }
    tr:nth-child(even) {
            background-color:dimgrey;
        }
            tr:hover {
            background-color: #53d8d8;
        }
    </style>
    <body style="color:rgb(223, 223, 223);text-align: center;"><h1 style="color:rgb(255, 255, 255)">Student's Data</h1><table>
    <thead>
        <tr>
            <th>Student Name</th>
            <th>Branch</th>
            <th>Year</th>
        </tr>
    </thead>
    <tbody>
        <% for (int i = 0; i < (name.length)&& name[i]!=null; i=i+3) { %>
                    <tr>
                        <td><%= name[i] %></td>
                        <td><%= name[i+1] %></td>
                        <td><%= name[i+2] %></td>
                    </tr>
                <% } %>
        </tbody>
</table></body>
</html>
