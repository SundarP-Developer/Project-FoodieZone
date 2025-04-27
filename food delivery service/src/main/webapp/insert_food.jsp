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
	 width:40%;
	 height:auto;
	 border:none;
	 border-radius:20px;
	 box-shadow:inset 0px 2px 20px black;
	 position:relative;
	 top:100px;
	 left:30%;
	 }
	 .content h1{
	 color:blue;
	 padding-top:30px;
	 text-align:center;
	 }
	 .content label{
	 font-size:21px;
	 margin-left:70px;
	 }
	 .content input{
	 width:280px;
	 height:40px;
	 border:1px solid gray;
	 font-size:20px;
	 border-radius:5px;
	 margin-bottom:25px;
	 outline:none;
	 margin-left:30px;
	 }
	 #hotel_name{
	 margin-left:29px;
	 }
	 #price{
	 margin-left:38px;
	 }
	 #price::-webkit-outer-spin-button,
	 #price::-webkit-inner-spin-button{
	-webkit-appearance:none;
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
	 margin-left:230px;
	 margin-bottom:30px;
	 }
	 .content button:hover{
	 transform:translateY(-3px);
	 }
</style>
</head>
<body>

	<div class="content">
	<h1>Insert Food</h1>
	<form action="insert_food" method="post" enctype="multipart/form-data">
	
	<label>Enter Hotel Name</label>
	<input type="text" id="hotel_name" name="hotel_name" placeholder="Hotel Name" required><br>
	
	<label>Enter Food Name</label>
	<input type="text" id="food_name" name="food_name" placeholder="Food Name" required><br>
	
	<label>Enter Food Price</label>
	<input type="number" id="price" name="price" placeholder="Price" required><br>
	
	<label>Enter Food Image</label>
	<input type="file" name="photo">
	
	<button onclick="insert(event)">Insert</button>
	
	
	</form>
	</div>
<script>
var hotel_name=document.getElementById("hotel_name");
var food_name=document.getElementById("food_name");
var price=document.getElementById("price");

function insert(event){
	
	if(hotel_name.value === "" || food_name.value === "" || price.value === "" || price.value <=0){
		event.preventDefault();
		alert("Invalid input");
	}
	
}
</script>
</body>
</html>