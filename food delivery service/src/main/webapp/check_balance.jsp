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
	 background-color:#eefcfd;
	}
	.head{
	position:relative;
	top:0px;
	width:100%;
	height:70px;
	background-color:blue;
	}
	.content{
	width:500px;
	height:auto;
	border:1px solid black;
	position:relative;
	top:100px;
	left:33%;
	background-color:white;
	border-radius:20px;
	border:none;
	box-shadow:0 0 30px black;
	}
	.pro_name{
	font-size:30px;
	position:relative;
	top:18px;
	margin-top:10px;
	margin-left:50px;
	font-weight:600;
	color:white;
	}
	.content h1{
	padding-top:20px;
	text-align:center;
	color:blue;
	}
	.content label{
	font-size:23px;
	margin-left:20px;
	}
	.content .id{
	margin-left:45px;
	}
	.content input{
	margin-left:20px;
	width:200px;
	height:40px;
	margin-bottom:20px;
	border-radius:5px;
	border:1px solid gray;
	outline:none;
	font-size:18px;
	}
	.content button{
	width:130px;
	height:40px;
	border:none;
	font-size:20px;
	margin-bottom:30px;
	background-color:blue;
	color:white;
	border-radius:5px;
	cursor:pointer;
	margin-left:180px;
	margin-top:10px;
	}
	.content button:hover{
	transform:translateY(-3px);
	}
</style>
</head>
<body>
	<div class="head">
	<p class="pro_name">FoodieZone</p>
	
	</div>


	<div class="content">
	<h1>Vault Balance</h1>
	<form action="check_balance" method="post">
	
	<label>Enter Your Vault Id</label>
	<input class="id" type="text" name="vault_id" placeholder="Vault ID" required><br>
	
	<label>Enter Your Password</label>
	<input type="password" name="pass" placeholder="Password" required><br>
	
	<button>Check</button>
	
	</form>
	</div>

</body>
</html>