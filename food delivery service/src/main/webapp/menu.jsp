<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="menu.css" rel="stylesheet">
</head>
<body>
	<div class="navbar"><h1>Name</h1></div>

	<div class="content">
		<form action="menu" method="post">
			<button name="action" value="add_hotel">Add Hotel</button><br>
			<button name="action" value="insert_food">Insert Food</button><br>
			<button name="action" value="hotel_details">Hotel Details</button><br>
			<button name="action" value="food_details">Food Details</button><br>
			<button name="action" value="update">Update</button><br>
			<button name="action" value="order_details">Order Details</button><br>
		</form>
	</div>

</body>
</html>