<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="logn.css">
</head>
<body>
	<div class="box">
	<h1>Login</h1>
	<form action="login" method="post">
	
	<label>Username</label>
	<input id="uname" type="text" name="uname">
	<label>Password</label>
	<input id="pass" type="password" name="pass">
	<button class="btn" onclick="validateForm(event)">submit</button>
	
	</form>
	
	<p>Don't have an account?<a href="signup.jsp"> Click here to Register</a></p>
	
	
	</div>
</body>
</html>