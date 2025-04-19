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
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
	.content{
	width:40%;
	height:auto;
	box-shadow:inset 0px 2px 20px black;
	position:relative;
	top:100px;
	left:30%;
	border-radius:20px;
	}
	.content h1{
	padding-top:30px;
	text-align:center;
	color:blue;
	}
	.content label{
	font-size:22px;
	margin-left:65px;
	}
	.content input{
	width:250px;
	height:40px;
	border-radius:5px;
	font-size:20px;
	border:1px solid gray;
	outline:none;
	margin-bottom:30px;
	margin-top:5px;
	margin-left:65px;
	}
	.content button{
	width:140px;
	height:40px;
	border:none;
	background-color:blue;
	color:white;
	font-size:20px;
	border-radius:5px;
	margin-bottom:40px;
	margin-left:240px;
	cursor:pointer;
	}
	.content button:hover{
	transform:translateY(-3px);
	}
	#hotel_name{
	margin-left:70px;
	}
	#ph_num{
	margin-left:26px;
	}
	#loc{
	margin-left:104px;
	}
</style>
</head>
<body>

	<div class=content>
	<h1>Add Hotel</h1>
	<form action="added" method="post">
	<label>Enter Hotel Name</label>
	<input type="text" id="hotel_name" name="hotel_name" placeholder="Hotel Name"><br>
	
	<label>Enter Contact Number</label>
	<input type="tel" id="ph_num" name="phone_number" placeholder="Phone Number"><br>
	
	<label>Enter Location</label>
	<input type="text" id="loc" name="location" placeholder="Location"><br>
	
	<button onclick="addhotel(event)">Add</button>
	
	</form>

	</div>

<script>
var hotel_name=document.getElementById("hotel_name");
var ph_num=document.getElementById("ph_num");
var loc=document.getElementById("loc");

function addhotel(event){
	if(hotel_name.value === "" || ph_num.value === "" || loc.value === ""){
		event.preventDefault();
		alert("Please fill the empty fields!");
	}
}

</script>
</body>
</html>