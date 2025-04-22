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
	.box{
	width:550px;
	height:auto;
	border:none;
	position:relative;
	left:33%;
	top:80px;
	}
	.box label{
	font-size:25px;
	margin-left:30px;
	}
	.box input{
	width:200px;
	height:40px;
	border:1px solid gray;
	border-radius:5px;
	font-size:20px;
	outline:none;
	margin-left:10px;
	}
	.box button{
	width:130px;
	height:40px;
	border:none;
	border:none;
	background-color:blue;
	color:white;
	border-radius:5px;
	font-size:20px;
	margin-left:20px;
	cursor:pointer;
	}
	.box1 .od{
	margin-bottom:30px;
	margin-left:44%;
	color:blue;
	}
	.box1{
	width:99%;
	height:500px;
	overflow-y:scroll;
	border:none;
	position:relative;
	top:130px;
	left:5px;
	}
	#tab{
	position:absolute;
	top:80px;
	font-size:20px;
	border-collapse:collapse;
	width:99%;
	left:6px;
	}
	#tab .head{
	text-align:center;
	background-color:blue;
	color:white;
	padding :10px;
	border-radius:5px;
	border:none;
	border-right:1px solid white;
	}
	#tab .content{
	border-collapse:collapse;
	border-left:1px solid gray;
	border-bottom:1px solid gray;
	padding:10px;
	text-align:center;
	}
	#tab .btn{
	width:100px;
	height:40px;
	border:none;
	background-color:blue;
	color:white;
	border-radius:5px;
	font-size:17px;
	cursor:pointer;
	}
</style>
<body>
	<div class="box">
	<form action="order_details.jsp">
	
	<label>Enter Date </label>
	<input type="text" name ="date" placeholder="date" required>
	<button>Search</button>
	</form>
	</div>
	
	<%
	if(true){
	String date=request.getParameter("date");
	ResultSet rs= Admin.order_details(date);
	System.out.println("date is "+date);
	
	out.print("<div class='box1'>");
	out.print("<h1 class='od'>Order Details</h1>");
	out.print("<table id='tab'style='border:1px solid black;'>");
    out.print("<tr><td class='head'>"+"No"+"</td>"+"<td  class='head'>"+"Name"+"</td>"+"<td class='head'>"+"Phone"+"</td>"
				+"<td class='head'>"+"Address"+"</td>"+"<td class='head'> "+"Food"+"</td>"+"<td class='head'>"+"Hotel"+"</td>"+"<td class='head'>"+"Total"+"</td>"+"<td class='head'>"+"Booking Date"+"</td>"+"<td class='head'>"+"Status"+"</td></tr>");
		while(rs.next()){
			
			out.print("<tr><td class='content'>"+rs.getInt(1)+"</td>"+"<td class='content'> <input name='hotel' style='width:200px;outline:none;border:none;margin-left:0px;font-size:20px;background-color:white;' value='"+rs.getString(2)+"' readonly></td>"+"<td class='content' id='ph'>"+rs.getLong(3)+"</td>"
					+"<td class='content'>"+rs.getString(4)+"</td><br>"+"<td class='content'>"+rs.getString(5)+"</td><br>"+"<td class='content'>"+rs.getString(6)+"</td><br>"+"<td class='content'>"+rs.getString(7)+"</td><br>"+"<td class='content'>"+rs.getString(8)+"</td><br>"+ 
"<td class='content'> <form action='delete_booking' method='post'><button class='btn' name='chosen_id' value="+ rs.getString(1)+">Delete</button></form></td>" );
		}
		out.print("</table>");
		out.print("</div>");
	}
	%>

</body>
</html>