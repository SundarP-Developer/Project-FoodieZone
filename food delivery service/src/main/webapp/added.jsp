<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.content{
	width:40%;
	height:auto;
	position:relative;
	top:150px;
	left:30%;
	}
	.content h1{
	font-size:40px;
	color:gray;
	text-align:center;
	}
	.content button{
	width:130px;
	height:40px;
	border:none;
	border-radius:5px;
	background-color:blue;
	color:white;
	cursor:pointer;
	font-size:20px;
	margin-left:230px;
	margin-bottom:20px;
	}
	.content button:hover{
	transform:translateY(-3px);
	}
</style>
<body>

	<div class="content">
	<form action="insert_food.jsp" method="post">
		<h1>" Hotel Added Successfully "</h1>
		<button>Insert food</button>
	</form>
	</div>

</body>
</html>