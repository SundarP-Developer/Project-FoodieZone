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
	width:80%;
	height:500px;
	position:relative;
	top:0px;
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
	position:absolute;
	top:30px;
	left:8%;
	margin-bottom:20px;
	}
	.heading{
	margin-top:80px;
	text-align:center;
	font-size:40px;
	color:blue;
	}
	.head{
	background-color:blue;
	border-left:1px solid gray;
	border-radius:10px;
	padding-left:60px;
	padding-right:60px;
	padding-top:20px;
	padding-bottom:20px;
	text-align:center;
	font-size:20px;
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
	width:130px;
	height:40px;
	border:none;
	border-radius:5px;
	background-color:blue;
	color:white;
	font-size:18px;
	cursor:pointer;
	}
	a{
	position:relative;
	top:30px;
	left:30px;
	}
	.back{
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

	<%
	if(true){
	ResultSet rs=Admin.hotel_list();
	out.print("<a href='menu.jsp'><button class='back'>back</button></a>");
	out.print("<h1 class='heading'>Hotels</h1>");
	out.print("<div class='box '>");

		out.print("<table id='tab'>");
	     out.print("<tr><td class='head'>"+"No"+"</td>"+"<td  class='head'> "+"Hotel Name"+"</td>"+"<td class='head'> "+"Phone Number"+"</td>"
					+"<td class='head'>"+"Location"+"</td>"+"<td class='head'>"+"Status"+" </td></tr>");
			while(rs.next()){
				
				out.print("<tr><td class='content'>"+rs.getInt(1)+"</td>"+"<td class='content'> <input name='hotel' style='width:250px;font-weight:600;outline:none;border:none;margin-left:0px;font-size:20px;background-color:white;' value='"+rs.getString(2)+"' readonly></td>"+"<td class='content' id='ph'>"+rs.getLong(3)+"</td>"
						+"<td class='content'>"+rs.getString(4)+"</td><br>"+ 
"<td class='content'> <form action='delete_hotel' method='post'><button class='btn' name='chosen_hotel' value="+ rs.getString(2)+">Delete</button></form></td>" );
			}
			out.print("</table>");
		
		out.print("</div>");
		}
	
	
	%>


</body>
</html>