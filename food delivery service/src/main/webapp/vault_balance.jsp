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
	 margin:0px;
	 padding:0px;
	 background-color:#4ddeea;
	}
	.content{
	width:500px;
	height:auto;
	border:none;
	box-shadow: 2px 2px 30px black;
	position:relative;
	top:100px;
	left:35%;
	border-radius:20px;
	background-color:#eefcfd;
	}
	.content h1{
	text-align:center;
	color:blue;
	padding-top:15px;
	}
	.content label{
	font-size:25px;
	margin-left:65px;
	}
	.content input{
	width:200px;
	height:40px;
	border:1px solid gray;
	outline:none;
	margin-bottom:20px;
	margin-left:5px;
	border-radius:5px;
	font-size:18px;
	}
	.content .vid{
	margin-left:105px;
	}
	.content a{
	margin-left:30%;
	}
	.content button{
	width:200px;
	height:40px;
	background-color:blue;
	color:white;
	border-radius:5px;
	border:none;
	font-size:18px;
	cursor:pointer;
	margin-bottom:20px;
	}
</style>
</head>
<body>

	<div class="content">
	<h1>Your Balance</h1>
	<label>Vault Id</label>
	<input class="vid" type ="text" value="${vault_id}" readonly><br>
	
	<label>Balance amount </label>
	<input type="number" value="${balance}" readonly><br>
	
	<a href="hotelList.jsp"><button>Start Process Again</button></a>
	
	</div>

</body>
</html>