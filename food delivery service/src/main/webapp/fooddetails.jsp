<%@ page import="home.User_Process" %>
<%@page import ="java.sql.ResultSet"%>
<%@page import ="java.io.*" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.sql.Blob" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="fooddetails.css">
<style>
.pro_name{
	font-size:30px;
	font-weight:700;
	color:white;
	position:absolute;
	top:-18px;
	left:25px;
}
</style>
</head>
<body style=margin:0;padding:0;>
<div class="navbar" style=width:100%;height:70px;background-color:blue;>
		<p class="pro_name">FoodieZone</p>
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
					Blob photo = rs.getBlob(4);
					
					InputStream inputStream = photo.getBinaryStream();
					ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	                byte[] buffer = new byte[4096];
	                int bytesRead = -1;
	                 
	                while ((bytesRead = inputStream.read(buffer)) != -1) {
	                    outputStream.write(buffer, 0, bytesRead);                  
	                }
	                 
	                byte[] imageBytes = outputStream.toByteArray();
	                String base64Image = Base64.getEncoder().encodeToString(imageBytes);
					
					out.print("<div class='foods' style=' border:none;display:inline-block;margin-top:70px;margin-left:120px;margin-bottom:30px;width:350px; height:auto; border-radius:10px;'>");
					
					out.print("<form action='total_cal' method='post'>");
					
					out.print("<img src='data:image/jpeg;base64," + base64Image + "' style='width:90%;margin-left:5%;margin-top:20px;height:150px; border-radius:10px;'>");
					
					out.print("<input type='text' name='hotel_name' style='background:transparent;position:absolute;top:0px;left:5%;width:500px;height:50px;font-size:40px;font-weight:600;outline:none;border:none;z-index:3;' value='"+hotel_name+"'readonly>");
	
					out.print("<input type='text' style='background:transparent;font-size:30px; margin-top:15px;margin-left:40px; width:280px; outline:none; font-weight:600;border:none; ' name='food_name' value='" + foodName + "' readonly>"+"<p style='font-size:20px;margin-left:50px;'>Price: "+rs.getInt(3)+"</p>"+"<p style='font-size:20px;margin-left:50px;margin-bottom:30px'>Quantity</p>"+
							"<h1 style='margin-left:50px;'><input type='number' name='quantity' id='quantity' style='width:50px; height:30px; font-size:18px;position:relative;top:-70px; left:85px;border-radius:5px;border:2px solid gray;' ></h1>"+
					"<button onclick='order(event,this)' style='margin-bottom:30px;margin-top:-55px;margin-left:30px; width:130px; height:40px;font-size:18px; float:right; margin-right:50px; border:none;border-radius:8px; background-color:blue;color:white; cursor:pointer;' id='btn' name='price' value='"+ rs.getInt(3)+"'>Order</button> </form>" );
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