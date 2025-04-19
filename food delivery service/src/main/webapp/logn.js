var name=document.getElementById("uname");
var pass=document.getElementById("pass");

function validateForm(event){
	if(name.value === "" || pass.value === "" ){
		event.preventDefault();
		alert("Please Fill the empty fields!!")
	}
}