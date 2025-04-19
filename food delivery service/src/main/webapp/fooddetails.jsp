<%@ page import="home.User_Process" %>
<%@page import ="java.sql.ResultSet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="fooddetails.css">
</head>
<body style=margin:0;padding:0;>
<div class="navbar" style=width:100%;height:70px;background-color:blue;>
		
		<a href="home.jsp"><button>About Us</button></a>

</div>

	<div class="content">
	
	<%
		if(true){
			String hotel_name= request.getParameter("chosen_hotel");
			ResultSet rs = User_Process.food_list(hotel_name);
			
			
			out.print("<div id='tab' style='border:none;height:580px; position:relative; top:60px ; overflow-y:scroll;'>");
				
			while(rs.next()){
					
					String foodName=rs.getString(2);
					
					out.print("<div class='foods' style=' border:none;display:inline-block;margin-top:70px;margin-left:120px;margin-bottom:30px;width:350px; height:290px; border-radius:10px;'>");
					
					out.print("<form action='total_cal' method='post'>");
					
					out.print("<input type='text' name='hotel_name' style='background:transparent;position:absolute;top:0px;left:5%;width:500px;height:50px;font-size:40px;font-weight:600;outline:none;border:none;z-index:3;' value='"+hotel_name+"'readonly>");
	
					out.print("<input type='text' style='background:transparent;font-size:30px; margin-top:40px;margin-left:40px; width:280px; outline:none; font-weight:600;border:none; ' name='food_name' value='" + foodName + "' readonly>"+"<p style='font-size:20px;margin-left:50px;margin-bottom:30px'>Price: "+rs.getInt(3)+"</p>"+"<p style='font-size:20px;margin-left:50px;margin-bottom:30px'>Quantity</p>"+
							"<h1 style='margin-left:50px;'><input type='number' name='quantity' id='quantity' style='width:50px; height:30px; font-size:18px;position:relative;top:-66px; left:105px;border-radius:5px;border:2px solid gray;' ></h1>"+
					"<button onclick='order(event,this)' style='margin-top:-55px;margin-left:30px; width:130px; height:40px;font-size:18px; float:right; margin-right:50px; border:none;border-radius:8px; background-color:blue;color:white; cursor:pointer;' id='btn' name='price' value='"+ rs.getInt(3)+"'>Order</button> </form>" );
					out.print("</div>");
				}
				out.print("</div>"); 
		}
	
	%>
	
	</div>
    <script>
    function order(event, btn) {
       const form = btn.closest("form"); // Get the form of the clicked button
       const quantity = form.querySelector("input[name='quantity']"); // Get the input inside the same form

        if (quantity.value <= 0 || quantity.value>20) {
           event.preventDefault();
            alert("Please enter quantity greater than 0 and less than or equal to 20");
        }
       console.log(quantity.value);
    }
    </script> 
</body>
</html>