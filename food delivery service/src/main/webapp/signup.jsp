<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="sigup.css">
</head>
<body>
<div class="box">

	<h1>Sign in</h1>

	<form action="sign_up" method="post">
	
	<label>Name</label><br>
	<input id="sname" type="text" name="sname" required placeholder="Name"><br>
	
	<label>Set Password for vault</label><br>
	<input id="setpass" type="password" name="setpass" required placeholder="Vault Password"><br>
	
	<label>Email id</label><br>
	<input id="mail" type="email" name="smail" required placeholder="Email"><br>
	
	<label>Contact Number</label><br>
	<input id="num" type="tel" name="phone" required placeholder="Contact Number"><br>
	
	<label>User name</label><br>
	<input id="uname" type="text" name="uname" required  placeholder="User Name"><br>
	
	<label>Password</label><br>
	<input id="pass" type="password" name="pass" required placeholder="Password"><br>
	
	<button class="btn" type="submit" onclick="validateForm(event)" id="submitButton">Register</button>
	
	</form>	
</div>
<script type="text/javascript" src="signup.js"></script>
</body>
</html>