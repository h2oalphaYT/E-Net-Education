document.getElementById('regFrm').addEventListener('submit',function(e){
	e.preventDefault();
	validateForm()
});

function validateForm(){
	
	var psw1 = document.getElementById("psw").value;
	var psw2 = document.getElementById("c_psw").value;
	
	if(psw1 != psw2) {  
      alert("**Passwords are not same");  
      return false;  
    } 
    //minimum password length validation  
	else if(psw1.length < 8) {  
	  alert("**Password length must be atleast 8 characters");  
	  return false;  
	} 
	//maximum length of password validation
	else if(psw1.length > 15) {  
	    document.getElementById("message1").innerHTML = "**Password length must not exceed 15 characters";  
	    return false;  
	}  
    else {  
      alert ("Your password created successfully");  
      document.write("JavaScript form has been submitted successfully"); 
      document.getElementById('regFrm').submit(); 
    }  
	




	
}