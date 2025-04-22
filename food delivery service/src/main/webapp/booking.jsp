<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bookng.css">
</head>
<style>
.content a button{
	width:200px;
	height:40px;
	border:none;
	background-color:blue;
	color:white;
	border-radius:5px;
	cursor:pointer;
	font-size:18px;
}
.content a {
	position:relative;
	top:-40px;
	left:160px;
}
.content a button:hover{
	transform:translateY(-3px);
}
</style>
<body style=background-color:#4ddeea;>

	<div class="content" style="width:80%; top:45px; left:10%;	background-color:#eefcfd;">
	<h2>Booking</h2>
	
	<form action="user" method="post">
	
	<%
		String food_name=request.getParameter("food_name");
		String hotel_name=request.getParameter("hotel_name");
		String total=request.getParameter("total");
	
		System.out.println(food_name+hotel_name+total);
		
		out.print("<div class='line' style='width:0px;height:400px;position:absolute;left:50%;top:16%;border:1px solid black;background-color:black;'></div>");
		out.print("<div class='details' style='height:auto;position:absolute;top:150px;left:55%;width:400px;border:none;'>");
		out.print("<label style='font-weight:600;margin-left:15px;font-size:22px;'>Food</label>");
		out.print("<input style='margin-left:51px; margin-top:20px;width:240px;height:40px;font-size:20px;border:1px solid gray;border-radius:5px;' type='text' name='food_name' value='"+food_name+"' readonly><br>");
		out.print("<label style='font-weight:600;margin-left:15px;font-size:22px;'>Hotel</label>");
		out.print("<input  style='margin-left:50px;margin-bottom:30px;width:240px;height:40px;margin-top:0px;font-size:20px;border:1px solid gray;border-radius:5px;' type='text' name='hotel_name' value='"+hotel_name+"' readonly><br>");
		out.print("<label style='font-weight:600;margin-left:15px;font-size:22px;'>Total Price</label>");
		out.print("<input  style='font-weight:600;position:relative;top:-44px;margin-left:150px;width:240px;height:40px;font-size:20px;border:1px solid gray;border-radius:5px;' type='number' name='total' value='"+total+"' readonly><br>");
		
		out.print("</div>");

	%>

	<label>Name</label>
	<input style="margin-left:92px;" id="name" type="text" name="name" placeholder="Name"><br>
	
	<label>Email</label>
	<input style="margin-left:95px;" id="email" type="email" name="email" placeholder="email"><br>
	
	<label>Phone number</label>
	<input id="phone" type="tel" name="phone" placeholder="Number"><br>
	
	<label>Address</label>
	<input style="margin-left:73px;" id="address" type="text" name="address" placeholder="Address"><br>
	
	<label>Vault ID</label>
	<input style="margin-left:75px;" id="vault_id" type="text" name="vault_id" placeholder="VaultId"><br>
	
	<label>Vault Password</label>
	<input style="margin-left:7px;" id="vault_pass" type="password" name="vault_pass" placeholder="password"><br>
	
	
	<button style="margin-left:79%; margin-bottom:0px;" class="next" onclick = "next(event)">Order</button>
	
	
	</form>	
	
	<a class="vault_balance" href="check_balance.jsp"><button >Check Vault Balance</button></a>
	
	</div>
	<script type="text/javascript" src="booking.js"></script>
</body>
</html>