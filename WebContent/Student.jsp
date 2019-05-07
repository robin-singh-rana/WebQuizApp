<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Student Section</title>
		<link rel="stylesheet" type="text/css" href="css/styles.css" />
		
		<script src="javascript/jquery-3.4.0.min.js"></script>
    	<script type="text/javascript" src="javascript/JS.js"></script>
    	<%@include file="Header.jsp" %>
	</head>
	
	<body>
	
	<div style="background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url('images/book.jpg'); margin-top: 10px; height: 595px; width: 100%; mar">
	<marquee behavior="scroll" scrollamount="20">
		<h1><b><i style="color:white; font-family: Georgia; font-weight: bold; font-size: 1em; text-shadow: 0px 2px 4px cyan;">WELCOME TO STUDENT SECTION</i></b></h1>
	</marquee>
	<div class="form-wrap">
		<div class="tabs">
			<h3 class="signup-tab"><a class="active" href="#signup-tab-content">Sign Up</a></h3>
			<h3 class="login-tab"><a href="#login-tab-content">Login</a></h3>
		</div><!--.tabs-->

		<div class="tabs-content">
			<div id="signup-tab-content" class="active">
				<form class="signup-form" action="SaveDataStudent.jsp" method="post">
					<input type="email" class="input" id="user_email" autocomplete="off" placeholder="Email" name="useremail">
					<input type="text" class="input" id="user_name" autocomplete="off" placeholder="Username" name="username">
					<input type="password" class="input" id="user_pass" autocomplete="off" placeholder="Password" name="userpassword">
					<input type="submit" class="button" value="Sign Up" name="btnsubmit">
				</form><!--.login-form-->
				<div class="help-text">
					<p>By signing up, you agree to our</p>
					<p><a href="#">Terms of service</a></p>
				</div><!--.help-text-->
			</div><!--.signup-tab-content-->

			<div id="login-tab-content">
				<form class="login-form" action="VerifyStudent.jsp" method="post">
					<input type="text" class="input" id="user_login" autocomplete="off" placeholder="Username" name="username">
					<input type="password" class="input" id="user_pass" autocomplete="off" placeholder="Password" name="userpassword">

					<input type="submit" class="button" value="Login" name="btnsubmit">
				</form><!--.login-form-->
				
			</div><!--.login-tab-content-->
		</div><!--.tabs-content-->
	</div><!--.form-wrap-->
	
	
	</div>
	</body>
	<div style="margin-top: 10px;"><%@include file="Footer.jsp" %></div>	
</html>