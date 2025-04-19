<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.body{
	margin:0px;
	padding:0px;
	font-family: Arial, Helvetica, sans-serif;
	}
	.overlay{
    width: 100%;
    background-color: black;
    opacity: 0.7;
    height: 100%;
    position: absolute;
    z-index: 1;
    top: 0;
    left: 0;
}
	.content{
	width:25%;
	height:280px;
	background-color:white;
	border:none;
	border-radius:20px;
	box-shadow:0 20px 30px gray;
	position:relative;
	top:130px;
	left:35%;
	z-index:2;
	animation:tick 1s;
	}
	.content img{
	border-radius:100%;
	margin-top:30px;
	margin-left:110px;
	width:150px;
	height:150px;
	animation:tick 1.5s;
	}
	a{
	position:absolute;
	top:30px;
	left:30px;
	z-index:3;
	}
	.btn{
	width:130px;
	height:40px;
	border:none;
	border-radius:5px;
	color:white;
	background-color:blue;
	font-size:20px;
	cursor:pointer;
	animation:tick 3s;
	}
	@keyframes tick{
	0%{
		transform:translateY(-30px) scale(0.2);
		opacity:0;
	}
	100%{
		transform:trnaslateY(0px) scale(1);
		opacity:1;	
	}
	}
	
	.content h1{
	text-align:center;
	animation:tick 1.5s;
	}
</style>

</head>
<body>
	<a href="hotelList.jsp"><button class="btn">Home</button></a>
 	<div class="overlay"></div>
 	
 	<div class="content">
 		<img alt="successful" src="images/orderplaced.jpg">
		<h1 style="margin-bottom:40px;">Order placed</h1>
	</div>
</body>
</html>