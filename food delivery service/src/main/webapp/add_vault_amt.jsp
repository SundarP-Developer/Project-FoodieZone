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
	font-family: Arial, Helvetica, sans-serif;
}
		.content{
		width:38%;
		height:auto;
		border:none;
		box-shadow:0px 20px 40px black;
		border-radius:20px;
		position:relative;
		top:120px;
		left:32%;
		}
		.content h1{
		padding-top:20px;
		color:blue;
		text-align:center;
		}
		.content label{
			font-size:26px;
			margin-left:15px;
		}
		.content input{
			margin-left:20px;
			margin-bottom:20px;
			width:200px;
			height:40px;
			border:1px solid gray;
			border-radius:5px;
			font-size:19px;
		}
		.content input:focus{
		outline:none;}
		.content input::placeholder{
		font-size:19px;
		}
		.content .vi{
		margin-left:105px;
		}
		#v_pass::-webkit-outer-spin-button,
		#v_pass::-webkit-inner-spin-button{
		-webkit-appearance:none;
		}
		.content .amt{
		margin-left:126px;
		}
		.amt::-webkit-outer-spin-button,
		.amt::-webkit-inner-spin-button{
		-webkit-appearance:none;
		}
		.content button{
		margin-top:20px;
		margin-left:15%;
		margin-bottom:0px;
		cursor:pointer;
		width:160px;
		height:40px;
		background-color:blue;
		color:white;
		border:none;
		font-size:20px;
		border-radius:5px;
		}
		.content a{
		margin-left:40%;
		}
		.content .back{
		position:relative;
		top:-60px;
		}
	</style>
</head>
<body>
	<div class="content">
	<h1>Vault Amount Process</h1>
	
	<form action="add_amount" method="post">
		<label>Enter your Vault ID </label>
		<input id="vi" class='vi'  type="text" name="vault_id" placeholder="Vault Id" required><br>
		<label>Enter your Vault Password</label>
		<input id="v_pass" type="number" name="vault_pass" placeholder="Vault Password" required><br>
		<label>Enter the amount</label>
		<input id="amt" class='amt' type="number" name="amount" required><br>
		
		<button onclick="check(event)" type="submit">Add</button>
	</form>
		<a href="hotelList.jsp"><button class="back">Back</button></a>
	</div>
<script>
var vi=document.getElementById("vi");
var v_pass=document.getElementById("v_pass");
var amt=document.getElementById("amt");

function check(event){
	if(vi.value === "" || v_pass.value === "" || amt.value === ""){
		event.preventDefault();
		alert("Invalid Input");
	} 
	else{
		alert("Amount Added Successfully..");
	}
}
</script>
</body>
</html>