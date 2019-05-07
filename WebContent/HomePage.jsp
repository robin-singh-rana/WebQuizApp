<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Online Quiz Application | Home</title>
		<link rel="stylesheet" type="text/css" href="css/styles.css" />
		
		<script src="javascript/jquery-3.4.0.min.js"></script>
    	<script type="text/javascript" src="javascript/JS.js"></script>
    	
		<%@include file="Header.jsp" %>
	</head>
	
	<body>
	<div style="background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url('images/book.jpg'); margin-top: 10px; height: 595px; width: 100%;">
	<marquee behavior="scroll" scrollamount="20">
		<h1><b><i style="color:white; font-family: Georgia; font-weight: bold; font-size: 1em; text-shadow: 0px 2px 4px cyan;">WELCOME TO STUDENT EVALUATION</i></b></h1>
	</marquee>
	
	<!--  <DIV class="container">
		<img alt="ulogin" src="images/button.png">
		<form action="userlogin" method="post">
		<DIV class="form-input">
			<INPUT type="text" name="user" placeholder="Enter Username" class="get"/>
		</DIV>
		<DIV class="form-input1">
			<INPUT type="password" name="pass" placeholder="Enter Password" class="get"/>
		</DIV>
		<DIV>
			<INPUT type="submit" name="submit" value="LOGIN" class="btn-login" /><br />
		</DIV>
		<DIV>
			<A href="forgotpass.jsp" class="a1"><b>Forget Password?</b> </A>
			<A href="signup.jsp" class="a2"><b>New User Signup Hare</b></A>
		</DIV>
		</form>
	</DIV>-->
	<div>
		<div id="sub-left">
			<h1 style="margin-top: 50px; color: cyan; font-family: Georgia; font-weight: bold; font-size: 3em; text-shadow: 0px 2px 10px black;">Student</h1>
			<a href="Student.jsp"><img border="7" src="images/student.jpg" width="300" height="300" style="margin-top: 50px; text-decoration: none;"></a>
		</div>
		
		<div id="sub-right">
			<h1 style="margin-top: 50px; color: cyan;  font-family: Georgia; font-weight: bold; font-size: 3em; text-shadow: 0px 2px 10px black;">Teacher</h1>
			<a href="Teacher.jsp"><img border="7" src="images/teacher.jpg" width="300" height="300" style="margin-top: 50px;"></a>
		</div>
	</div>
	</div>
	
</body>
	
<div style="margin-top: 10px;"><%@include file="Footer.jsp" %></div>	
</html>