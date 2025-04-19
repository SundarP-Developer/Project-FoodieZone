<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
	font-family: Arial, Helvetica, sans-serif;
	}
	.content{
	width:800px;
	height:200px;
	position:relative;
	top:150px;
	left:25%;
	}
	.content h1{
	text-align:center;
	color:grey;
	}
	a{
	margin-left:40%;
	margin-top:20px;
	}
	button{
	width:160px;
	height:40px;
	background-color:blue;
	color:white;
	border:none;
	border-radius:5px;
	cursor:pointer;
	}
</style>
</head>
<body>
 	<div class="content">
 	<h1>An account is Already exists! with this Email</h1>
 	<a href="login.jsp"><button>Click here to Login</button></a>
 	</div>
</body>
</html>