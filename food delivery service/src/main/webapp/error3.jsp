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
 font-family: Arial, Helvetica, sans-serif;
 }
	.content{
		width:50%;
		height:auto;
		margin-left:25%;
		position:relative;
		top:120px;	
		border-radius:20px;

	}
	.content h1{
	font-size:33px;
	text-align:center;
	color:gray;
	}
	.content  a{
	position:relative;
	top:20px;
	margin-left:120px;
	}
	.content button{
	margin-bottom:50px;
	width:200px;
	height:40px;
	border:none;
	border-radius:5px;
	background-color:blue;
	color:white;
	font-size:18px;
	cursor:pointer;
	}
	.content button:hover{
		transform:translateY(-3px);
	}
</style>
<body>
	<div class="content">
	<h1>" Your vault amount is lower than the total!!! "</h1>
	<h1>" Or no vault is present with this id and password "</h1>
	<a href="hotelList.jsp"><button>Back</button></a>
	<a href="add_vault_amt.jsp"><button>Add Vault Amount</button></a>
	</div>
</body>
</html>