$(document).ready(function() {
	$("#togglePass").click(function() {
		togglePassword();
	});
});


function togglePassword() {
	var checkValue = document.getElementById("password");
	if (checkValue.type === "password") {
		checkValue.type = "text";
	} else {
		checkValue.type = "password";
	}
}



    
 

