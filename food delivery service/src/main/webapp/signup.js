
var sname=document.getElementById("sname");
var setpass=document.getElementById("setpass");
var mail=document.getElementById("mail");
var num=document.getElementById("num");
var uname=document.getElementById("uname");
var pass=document.getElementById("pass");


function validateForm(event){
	if(sname.value ==="" || setpass.value ==="" || mail.value ==="" || num.value ==="" || uname.value ==="" || pass.value ===""){
		alert("Please fill the empty fields");
		event.preventDefault();
	}
}