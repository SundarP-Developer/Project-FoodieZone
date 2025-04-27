<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.body{
	margin:0px;
	padding:0px;
	font-family: sans-serif;
	background-color:#eefcfd;
	}
	.content{
	width:500px;
	height:auto;
	position:relative;
	top:80px;
	left:36%;
	border-radius:20px;
	box-shadow: 0px 0px 30px black;
	background-color:white;
	}
	.content h1{
	padding-top:40px;
	margin-left:56px;
	margin-bottom:50px;
	}
	.content .ptv{
	margin-right:0px;
	margin-bottom:0px;
	margin-top:50px;
	width:150px;
	height:50px;
	color:white;
	background-color:blue;
	border:none;
	border-radius:5px;
	font-size:16px;
	cursor:pointer;
	}
	button:hover{
	transform:translateY(-3px);
	}
	label{
	margin-left:106px;
	font-size:20px;
	font-weight:600;
	}
	input{
	width:150px;
	height:30px;
	margin-bottom:20px;
	border-radius:5px;
	font-size:18px;
	padding-left:10px;
	border:1px solid gray;
	}
	.fn{
	margin-left:23px;
	}
	.qn{
	margin-left:44px;
	}
	.hn{
	margin-left:19px;
	}
	.tot{
	margin-left:3px;
	}
	.pr{
	margin-left:75px;}
	input:focus{
	outline:none;
	}
	.gst{
	position:relative;
	top:-80px;
	left:125px;
	font-size:16px;
	}
	.cod{
	margin-left:90px;
	position:relative;
	top:-50px;
	width:150px;
	height:50px;
	color:white;
	background-color:blue;
	border:none;
	border-radius:5px;
	font-size:16px;
	cursor:pointer;}
	</style>
<body style=background-color:#eefcfd;>

	<img alt="successful" src="images/payment.png" style="width:500px;height:500px;position:absolute;top:100px;left:160px;z-index:2;">
	<div class="content">
	
	<h1>Select your payment method</h1>
	
	<form action="booking.jsp" method="post">
	
	
	<label>Food Name</label>
	<input type="text" class="fn" name="food_name" value="${food_name}" readonly><br>
	
	<label>Quantity</label>
	<input type="number" class="qn" name="quantity" value="${quantity}" readonly><br>
	
	<label>Hotel Name</label>
	<input type="text" class="hn"  name="hotel_name" value="${hotel_name}" readonly><br>
	
	<label>Price</label>
	<input type="number" class="pr" name="price" value="${price}" readonly><br>
	
	<label>Total Amount</label>
	<input type="number" class="tot" name="total" value="${total}"  readonly>
	
	<label class="gst">Including GST(Rs 30)</label>
	
	<button class="ptv" type="submit">Pay through Vault</button>
	
	</form>
	
	
	<form action="cash_on_delivery.jsp" method="post">
	
	<input type="hidden" name="food_name" value="${food_name}">
    <input type="hidden" name="hotel_name" value="${hotel_name}">
    <input type="hidden" name="total" value="${total}">
	
	<button class='cod' type="submit">Cash on delivery</button>
	</form>
	
	
	</div>
</body>
</html>