<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="database_handler.Create_connection"%>
<%@page import="java.sql.*"%>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Create Quiz here!</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<%@include file="Header.jsp" %>
	</head>
	
	<body>
	<div style="height: 86px; width: 100%; background-color:black; text-align:center; vertical-align: middle; line-height: 86px; margin-top: 10px;">
	<div style="color:#33A4FF; font-family: Georgia; font-weight: bold; font-size: 3em; text-shadow: 0px 2px 4px white;">Submit Questions Here!</div>
	</div>
	<form style="background-color: #E9D3D3; color: #0039FF;">
	  	<div class="form-group">
	    <label for="exampleInputEmail1">Question 1:</label>
	    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Question" name="q1" required>
	    
	    <div class="form-row" style="margin-top: 5px;">
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 1" name="q1_op1" required>
    		</div>
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 2" name="q1_op2" required>
    		</div>
   			<div class="col">
      		<input type="text" class="form-control" placeholder="Option 3" name="q1_op3" required>
    		</div>
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 4" name="q1_op4" required>
    		</div>
   			<div class="col">
      		<input type="text" class="form-control" placeholder="Correct Answer" name="q1_cop" required>
    		</div>
  		</div>
	    
	  	</div>
	  	<div class="form-group">
	    <label for="exampleInputEmail1">Question 2:</label>
	    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Question" name="q2" required>
	    
	    <div class="form-row" style="margin-top: 5px;">
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 1" name="q2_op1" required>
    		</div>
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 2" name="q2_op2" required>
    		</div>
   			<div class="col">
      		<input type="text" class="form-control" placeholder="Option 3" name="q2_op3" required>
    		</div>
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 4" name="q2_op4" required>
    		</div>
   			<div class="col">
      		<input type="text" class="form-control" placeholder="Correct Answer" name="q2_cop" required>
    		</div>
  		</div>
	    
	  	</div>
	  	<div class="form-group">
	    <label for="exampleInputEmail1">Question 3:</label>
	    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Question" name="q3" required>
	    
	    <div class="form-row" style="margin-top: 5px;">
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 1" name="q3_op1" required>
    		</div>
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 2" name="q3_op2" required>
    		</div>
   			<div class="col">
      		<input type="text" class="form-control" placeholder="Option 3" name="q3_op3" required>
    		</div>
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 4" name="q3_op4" required>
    		</div>
   			<div class="col">
      		<input type="text" class="form-control" placeholder="Correct Answer" name="q3_cop" required>
    		</div>
  		</div>
	    
	  	</div>
	  	<div class="form-group">
	    <label for="exampleInputEmail1">Question 4:</label>
	    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Question" name="q4" required>
	    
	    <div class="form-row" style="margin-top: 5px;">
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 1" name="q4_op1" required>
    		</div>
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 2" name="q4_op2" required>
    		</div>
   			<div class="col">
      		<input type="text" class="form-control" placeholder="Option 3" name="q4_op3" required>
    		</div>
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 4" name="q4_op4" required>
    		</div>
   			<div class="col">
      		<input type="text" class="form-control" placeholder="Correct Answer" name="q4_cop" required>
    		</div>
  		</div>
	    
	  	</div>
	  	<div class="form-group">
	    <label for="exampleInputEmail1">Question 5:</label>
	    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Question" name="q5" required>
	    
	    <div class="form-row" style="margin-top: 5px;">
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 1" name="q5_op1" required>
    		</div>
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 2" name="q5_op2" required>
    		</div>
   			<div class="col">
      		<input type="text" class="form-control" placeholder="Option 3" name="q5_op3" required>
    		</div>
    		<div class="col">
      		<input type="text" class="form-control" placeholder="Option 4" name="q5_op4" required>
    		</div>
   			<div class="col">
      		<input type="text" class="form-control" placeholder="Correct Answer" name="q5_cop" required>
    		</div>
  		</div>
	    
	  	</div>
	  	<button type="submit" class="btn btn-primary" name="btnsubmit" style="margin-left:45%; width: 200px; font-size: 2em; font-weight: bolder;">Submit</button>
	</form>
	
	
	<!-- Java Code here for storing questions in the database -->
	<%
		if(request.getParameter("btnsubmit")!=null)
		{
			String q1=request.getParameter("q1");
			String q2=request.getParameter("q2");
			String q3=request.getParameter("q3");
			String q4=request.getParameter("q4");
			String q5=request.getParameter("q5");
			
			String q1_op1=request.getParameter("q1_op1");
			String q1_op2=request.getParameter("q1_op2");
			String q1_op3=request.getParameter("q1_op3");
			String q1_op4=request.getParameter("q1_op4");
			String q1_cop=request.getParameter("q1_cop");
			
			String q2_op1=request.getParameter("q2_op1");
			String q2_op2=request.getParameter("q2_op2");
			String q2_op3=request.getParameter("q2_op3");
			String q2_op4=request.getParameter("q2_op4");
			String q2_cop=request.getParameter("q2_cop");
			
			String q3_op1=request.getParameter("q3_op1");
			String q3_op2=request.getParameter("q3_op2");
			String q3_op3=request.getParameter("q3_op3");
			String q3_op4=request.getParameter("q3_op4");
			String q3_cop=request.getParameter("q3_cop");
			
			String q4_op1=request.getParameter("q4_op1");
			String q4_op2=request.getParameter("q4_op2");
			String q4_op3=request.getParameter("q4_op3");
			String q4_op4=request.getParameter("q4_op4");
			String q4_cop=request.getParameter("q4_cop");
			
			String q5_op1=request.getParameter("q5_op1");
			String q5_op2=request.getParameter("q5_op2");
			String q5_op3=request.getParameter("q5_op3");
			String q5_op4=request.getParameter("q5_op4");
			String q5_cop=request.getParameter("q5_cop");
			
			Connection conn=Create_connection.getConnection();
			String query="insert into quiz_questions(question, option1, option2, option3, option4, correct_option) values(?,?,?,?,?,?)";
			PreparedStatement ps1=conn.prepareStatement(query);
			PreparedStatement ps2=conn.prepareStatement(query);
			PreparedStatement ps3=conn.prepareStatement(query);
			PreparedStatement ps4=conn.prepareStatement(query);
			PreparedStatement ps5=conn.prepareStatement(query);
			
			ps1.setString(1, q1);
			ps1.setString(2, q1_op1);
			ps1.setString(3, q1_op2);
			ps1.setString(4, q1_op3);
			ps1.setString(5, q1_op4);
			ps1.setString(6, q1_cop);
			
			ps2.setString(1, q2);
			ps2.setString(2, q2_op1);
			ps2.setString(3, q2_op2);
			ps2.setString(4, q2_op3);
			ps2.setString(5, q2_op4);
			ps2.setString(6, q2_cop);
			
			ps3.setString(1, q3);
			ps3.setString(2, q3_op1);
			ps3.setString(3, q3_op2);
			ps3.setString(4, q3_op3);
			ps3.setString(5, q3_op4);
			ps3.setString(6, q3_cop);
			
			ps4.setString(1, q4);
			ps4.setString(2, q4_op1);
			ps4.setString(3, q4_op2);
			ps4.setString(4, q4_op3);
			ps4.setString(5, q4_op4);
			ps4.setString(6, q4_cop);
			
			ps5.setString(1, q5);
			ps5.setString(2, q5_op1);
			ps5.setString(3, q5_op2);
			ps5.setString(4, q5_op3);
			ps5.setString(5, q5_op4);
			ps5.setString(6, q5_cop);
			
			int x=ps1.executeUpdate();
			ps2.executeUpdate();
			ps3.executeUpdate();
			ps4.executeUpdate();
			ps5.executeUpdate();
			
			if(x>0)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Created Quiz Successfully!\n Students Can Now Take the Quiz!');");
				out.println("location='Student.jsp';");
				out.println("</script>");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Something Went Wrong');");
				out.println("location='Student.jsp';");
				out.println("</script>");
			}
		}
	%>
	
	
	</body>
	<div style="margin-top: 10px;"><%@include file="Footer.jsp" %></div>
</html>