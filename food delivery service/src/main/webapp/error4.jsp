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
	width:50%;
	height:auto;
	position:relative;
	top:100px;
	left:25%;
	}
	.content h1{
	color:gray;
	text-align:center;
	}
	.content a{
	margin-left:40%;
	}
	.content .btn{
	width:130px;
	height:40px;
	border:none;
	background-color:blue;
	color:white;
	font-size:20px;
	border-radius:5px;
	margin-top:20px;
	margin-bottom:20px;
	cursor:pointer;
	}
</style>
</head>
<body>
	<div class="content">
		<h1>" No vault is present with this id and password!! "</h1>
		<a href="add_vault_amt.jsp"><button class="btn">try again</button></a>
	</div>
</body>
</html>