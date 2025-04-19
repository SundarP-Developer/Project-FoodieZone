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
}
 .content{
	 width:50%;
	 height:auto;
	 border:none;
	 box-shadow:inset 0px 1px 20px 10px gray;
	 border-radius:20px;
	 position:relative;
	 top:100px;
	 left:25%;
	 }
	 .content h1{
	 padding-top:40px;
	 text-align:center;
	 color:gray;
	 }
	 .content button{
	 width:150px;
	 height:40px;
	 border:none;
	 border-radius:5px;
	 font-size:20px;
	 background-color:blue;
	 color:white;
	 cursor:pointer;
	 margin-left:310px;
	 margin-bottom:30px;
	 }
</style>
</head>
<body>
	<div class="content">
	<form action="menu.jsp">
	<h1>" Food Inserted Successfully "</h1>
	<button>Go Back</button>
	</form>
	</div>
</body>
</html>