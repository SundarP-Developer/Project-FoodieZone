var name=document.getElementById("name");
var email=document.getElementById("email");
var phone=document.getElementById("phone");
var address= document.getElementById("address");
var vault_id=document.getElementById("vault_id");
var vault_pass=document.getElementById("vault_pass");

function next(event){
	if(name.value === "" || email.value === "" || phone.value === "" || address.value === "" || vault_id === "" || vault_pass === ""){
		event.preventDefault();
		alert("Please fill empty input fields");
	}
}