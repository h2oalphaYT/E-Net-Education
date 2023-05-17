function validateForm(){
	
	var psw1 = document.getElementByid("psw").value;
	var psw2 = document.getElementByid("c_psw").value;
	
	if(psw1 != psw2) {  
	      document.getElementById("message2").innerHTML = "**Passwords are not same";  
	      return false;  
	    } else {  
	      alert ("Your password created successfully");  
	      document.write("JavaScript form has been submitted successfully");  
	    }  
	
//minimum password length validation  
if(psw1.length < 8) {  
  document.getElementById("message1").innerHTML = "**Password length must be atleast 8 characters";  
  return false;  
} 
//maximum length of password validation
if(psw1.length > 15) {  
    document.getElementById("message1").innerHTML = "**Password length must not exceed 15 characters";  
    return false;  
  }  

	
}