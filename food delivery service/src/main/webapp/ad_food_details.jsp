<%@ page import="Admin.Admin" %>
<%@ page import="java.sql.ResultSet" %>

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
	.box1{
	width:40%;
	height:auto;
	border:none;
	position:relative;
	top:100px;
	left:31%;
	}
	.box1 button{
	width:100px;
	height:35px;
	border:none;
	border-radius:5px;
	background-color:blue;
	color:white;
	font-size:18px;
	cursor:pointer;
	margin-left:30px;
	}
	.box1 label{
	font-size:25px;
	font-weight:600;
	}
	.box1 input{
	width:200px;
	height:40px;
	border:1px solid gray;
	font-size:20px;
	outline:none;
	border-radius:5px;
	margin-left:20px;
	}
	.box{
	width:80%;
	height:500px;
	position:relative;
	top:170px;
	left:10%;
	border:none;
	overflow-y:scroll;
	}
	::-webkit-scrollbar{
	width:5px;
	}
	::-webkit-scrollbar-thumb{
	border-radius:10px;
	background-color:rgb(164, 164, 164);
	}
	::-webkit-scrollbar-track{
	background-color:rgb(213, 212, 212);
	}
 
	#tab {
	margin-top:30px;
	margin-left:20%;
	font-size:20px;
	}
	.head{
	width:130px;
	background-color:blue;
	border-left:1px solid white;
	border-radius:5px;
	padding:10px;
	text-align:center;
	color:white;
	}
	.content{
	border-right:1px solid black;
	border-bottom:1px solid black;
	padding:10px;
	text-align:center;
	font-size:20px;
	}
	.btn{
	width:100px;
	height:40px;
	border:none;
	border-radius:5px;
	background-color:blue;
	color:white;
	font-size:18px;

	cursor:pointer;
	}
</style>
<body>

<div class="box1">
	<form action="ad_food_details.jsp">
	
	<label>Enter Hotel Name </label>
	<input type="text" id="hn" name="hotel_name" placeholder="Hotel Name" required>
	<button type ="submit" onclick="validate(event)">Search</button>
	
	</form>
</div>
	
	<%
	String hotel_name=request.getParameter("hotel_name");
	
	if(hotel_name != null && !hotel_name.trim().isEmpty()) {
	    ResultSet rs = Admin.food_details(hotel_name);
	
	    System.out.println("hotel_name is "+hotel_name);    

	
	out.print("<div class='box'>");
	
	out.print("<table id = 'tab'>");
	out.print("<tr><td class='head'>"+"No"+"</td>"+"<td  class='head'>"+"Food Name"+"</td>"+"<td class='head'> "+"Price"+"</td>"
			+"<td class='head'>"+"Status"+" </td></tr>");
	
	while(rs.next()){
		String food_name=rs.getString(2);
		
		out.print("<tr><td class='content'>"+rs.getInt(1)+"</td>"+"<td class='content'> <input name='hotel' style='width:250px;outline:none;border:none;margin-left:0px;font-size:20px;background-color:white;' value='"+rs.getString(2)+"' readonly></td>"
		+"<td class='content' id='ph'>"+rs.getLong(3)+"</td>"
				+ "<td class='content'> <form action='delete_food' method='post'>"+
				"<input type='hidden' name='hotel_name' value='" + hotel_name + "'>" +"<button onclick='delete_msg()' class='btn' name='chosen_food' value="+ food_name+">Delete</button></form></td>" );
	}
	out.print("</table>");
	out.print("</div>");
	}
	%>
<script>

function validate(event){
	if(hn.value===""){
	event.preventDefault();
	alert("Invalid input");
	}
}
</script>
</body>
</html>