<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="database_handler.Create_connection"%>
<%@page import="java.sql.*"%>
<%@include file="Header.jsp" %>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="css/styles.css" />
		<title>Result Page</title>
	</head>
	<body>
	<div style="background-image:linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url('images/book.jpg'); margin-top: 10px; height: 595px; width: 100%; mar">
	<%
		int count=0;
		Connection conn=Create_connection.getConnection();
		String query="select count(*) from answers where attempted_answer=correct_answer";
		Statement st=conn.createStatement();
		
		ResultSet rs=st.executeQuery(query);
		while (rs.next()){
            count = rs.getInt(1);
        }	
	%>
	<%
    out.println("<br><br><br><br><br><br><br><br><br><br><b class='displayresult'>Number of Correct Answers: "+count+"/5"+"</b>");
    %>
    </div>
	</body>
<div style="margin-top: 10px;"><%@include file="Footer.jsp" %></div>
</html>