<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
	margin:0px;
	padding:0px;
	font-family: Arial, Helvetica, sans-serif;
	}
	.content{
	width:40%;
	height:auto;
	position:relative;
	top:100px;
	left:30%;
	}
	.content h1{
	text-align:center;
	color:gray;
	}
	.content button{
	width:140px;
	height:40px;
	border:none;
	border-radius:5px;
	background-color:blue;
	color:white;
	font-size:20px;
	cursor:pointer;
	margin-left:230px;
	margin-bottom:20px;
	}
	.content button:hover{
	transform:translateY(-3px);
	}
</style>
</head>
<body>
	<div class="content">
	<form action="adminlogin.jsp" methos="post">
		<h1>" Wrong User Name or Password!! "</h1>
		<button onclick="adminlogin.jsp">try again</button>
	</form>
	</div>
</body>
</html>