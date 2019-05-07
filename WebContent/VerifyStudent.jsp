<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="database_handler.Create_connection"%>
<%@page import="java.sql.*"%>
<%@include file="Header.jsp" %>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
	<div style="background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url('images/book.jpg'); margin-top: 10px; height: 595px; width: 100%; mar">
	<%
		String username=request.getParameter("username");
		String userpassword=request.getParameter("userpassword");
		
		Connection conn=Create_connection.getConnection();
		String query="select * from student_details where username=? and userpassword=?";
		PreparedStatement ps=conn.prepareStatement(query);
		
		ps.setString(1, username);
		ps.setString(2, userpassword);
		
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			response.sendRedirect("TakeQuiz.jsp");
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('User Not Found');");
			out.println("location='Student.jsp';");
			out.println("</script>");
		}
	%>
	</body>
</html>