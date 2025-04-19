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
	width:400px;
	height:400px;
	box-shadow:0 10px 30px black;
	position:relative;
	left:35%;
	top:100px;
	border-radius:20px;
	}
	.content h1{
	text-align:center;
	padding-top:20px;
	margin-top:10px;
	margin-bottom:30px;
	color:blue;	
	}
	.content label{
	font-size:22px;
	margin-left:40px;
	}
	.content input{
	width:300px;
	height:40px;
	margin-top:10px;
	margin-bottom:30px;
	margin-left:38px;
	font-size:20px;
	outline:none;
	border:1px solid gray;
	border-radius:5px;
	}
	.content button{
	width:140px;
	height:40px;
	background-color:blue;
	color:white;
	border:none;
	border-radius:5px;
	font-size:20px;
	margin-top:10px;
	margin-left:135px;
	cursor:pointer;
	}

</style>
</head>
<body>

	<div class="content">
	<h1>Login</h1>
		<form action="adminlogin" method="post">
			<label>Enter your Id</label><br>
			<input id="vid" class="id" type="text" name="id" placeholder="Id"><br>
			
			<label>Enter your Password</label><br>
			<input id="pass" type="password" name="pass" placeholder="Password"><br>
			
			<button onclick="next(event)">Submit</button>
		</form>
	</div>
	
<script>
var vid=document.getElementById("vid");
var pass=document.getElementById("pass");

function next(event){
	if(vid.value==="" || pass.value===""){
		event.preventDefault();
		alert("Please fill the empty fields!");
	}
}

</script>
</body>
</html>