<%@ page import="home.User_Process" %>
<%@page import ="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8 "
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="hotelList.css">
</head>
<body style=background-color:#eefcfd;>

	<div class="container">
	
	<div class="navbar">
	
	<form action="hotelList.jsp" method="get">
	<input type="text" name="search_name" placeholder="Hotelname" required>
	<button type="submit">search</button>
	</form>
	
	</div>
	</div>

	<div class="hotels" style='margin-top:130px;height:450px;margin-bottom:20px;'>
	<h1 class="heading" style="margin-top:0px;margin-bottom:15px;">Hotel List</h1>
		<%
		if(true){
			String search_name=request.getParameter("search_name");
			System.out.println(search_name);
			ResultSet rs = User_Process.list(search_name);
			
			out.print("<table id='tab' style='margin-top:-30px;margin-left:40px;'>");
		     out.print("<tr><td class='head'> <h1>"+"No"+"</h1></td>"+"<td  class='head'> <h1>"+"Hotel Name"+"</h1></td>"+"<td class='head'> <h1>"+"Phone Number"+"</h1></td>"
						+"<td class='head'><h1>"+"Location"+"</h1></td>"+"<td class='head'> <h1>"+"Status"+"</h1> </td></tr>");
				while(rs.next()){
					
					out.print("<tr><td class='content' ><h2>"+rs.getInt(1)+"</h2></td>"+"<td class='content'> <input name='hotel' style='width:250px;outline:none;border:none;margin-left:-40px;font-size:26px;font-weight:600;background-color:white;' value='"+rs.getString(2)+"' readonly></td>"+"<td class='content' id='ph'> <h2>"+rs.getLong(3)+"</h2></td>"
							+"<td class='content'><h2>"+rs.getString(4)+"</h2></td><br>"+ 
"<td class='content'> <form action='fooddetails.jsp' method='post'><button class='btn' name='chosen_hotel' value="+ rs.getString(2)+">Choose</button></form></td>" );
				}
				out.print("</table>");
		}
		%>

	</div>
</body>
</html>