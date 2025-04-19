<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body{
	margin:0;
	padding:0;
	font-family: Arial, Helvetica, sans-serif;
	}
	.content{
	width:400px;
	height:auto;
	position:relative;
	top:150px;
	left:35%;
	border:none;
	box-shadow:0 20px 40px black;
	padding:40px;
	border-radius:20px;
	
	}
	label{
	margin-left:30%;
	font-size:20px;
	margin-bottom:15px;
	}
	input{
	width:150px;
	height:40px;
	margin-left:30%;
	margin-bottom:20px;
	border-radius:10px;
	border:none;
	background-color:lightgrey;
	z-index:0;
	font-weight:600;
	font-size:18px;
	padding-left:10px;
	}
	input:focus{
	outline:none;
	}
	a{
	position:relative;
	top:10px;
	margin-left:145px;
	}
	button{
	width:110px;
	height:40px;
	background-color:blue;
	color:white;
	border:none;
	border-radius:5px;
	font-size:20px;
	cursor:pointer;
	}
	button:hover{
	transform:translateY(-3px);
	}
	h3{
	margin-top:0px;
	font-weight:600;
	color:black;
	}
	</style>
	
<body>
	<div class="content">
	<h3>" This is your vault Id and password you can use this to make your payment through vault, remind this for your future use. "</h3>
	
	<label>Vault Id</label><br>
	<input value="${vaultid}" type="text" name="vaultId" readonly><br>
	
	<label>Vault Password</label><br>
	<input value="${vaultpass}" type="number" name="vaultPass" readonly><br>
	
	<a href="login.jsp"><button>Okay</button></a>
	</div>
	
</body>
</html>