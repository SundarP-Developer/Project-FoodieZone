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
	margin:0px;
	padding:0px;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}
	.content{
	width:40%;
	height:auto;
	border:none;
	border-radius:20px;
	position:relative;
	top:100px;
	left:30%;
	box-shadow:inset 0px 2px 20px black;
	}
	.content h1{
	padding-top:30px;
	color:blue;
	text-align:center;
	}
	.content label{
	font-size:22px;
	margin-left:60px;
	}
	.content input{
	width:230px;
	height:40px;
	border:1px solid gray;
	border-radius:5px;
	margin-left:50px;
	margin-bottom:20px;
	outline:none;
	font-size:20px;
	}
	#hotel_name{
	margin-left:84px;
	}
	#price{
	margin-left:104px;
	}
	#price::-webkit-outer-spin-button,
	#price::-webkit-inner-spin-button{
	-webkit-appearance:none;
	}
	.content button{
	width:130px;
	height:40px;
	border:none;
	background-color:blue;
	color:white;
	border-radius:5px;
	font-size:20px;
	cursor:pointer;
	margin-top:10px;
	margin-left:240px;
	margin-bottom:30px;
	}
	.content button:hover{
	transform:translateY(-3px);
	}
</style>
<body>

	<div class="content">
	<h1>Update Price</h1>
	
	<form action="update" method="post">
	<label>Enter Hotel Name</label>
	<input type="text" id="hotel_name" name="hotel_name" placeholder="Hotel Name" required><br>
	
	<label>Enter the Food Name</label>
	<input type="text" id="food_name" name="food_name" placeholder="Food Name" required><br>
	
	<label>Enter New Price</label>
	<input type="number" id="price" name="price" placeholder="Price" required><br>
	
	<button type="submit" onclick="change(event)">Change</button>
	</form>
	
	</div>
<script>
var hotel_name=document.getElementById("hotel_name");
var food_name=document.getElementById("food_name");
var price=document.getElementById("price");

function change(event){
	if(hotel_name.value === "" || food_name.value === "" || price.value === "" || price.value <= 0){
			event.preventDefault();
			alert("Invalid input");
	}
	else{
		alert("Updated Successfully..")
	}
}
</script>
</body>
</html>