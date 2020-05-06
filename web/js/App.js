//do every thing afer the content is loaded on the screen
document.addEventListener('DOMContentLoaded' , function(){
    
    
    //cache the DOM
    var cart = document.getElementById("cart");
    var cartIcon = document.getElementById("cartIcon");
    var signUpForm = document.getElementById("submitForm");
    var loginForm = document.getElementById("loginForm");
    var signUpEmailLable = document.getElementById("emailLable");
    var signUppwdLabel = document.getElementById("passwordLable"); 
    var signUCppwdLabel = document.getElementById("cpasswordLable");
    var firstNameLabel = document.getElementById("fnameLabel");
    var laastNameLabel = document.getElementById("lnameLabel");
    var countryLabel = document.getElementById("countryLabel");
    var addressLabel = document.getElementById("addressLabel");
    var creditCardLabel = document.getElementById("creditCardLabel");
    var creditPinLabel = document.getElementById("creditPinLabel");
    var LoginEmailLable = document.getElementById("loginEmail");
    var LoginPwdLable = document.getElementById("loginPWDlable");
     
    var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/  ;
    var checkForLetters = /^[a-zA-Z]+$/ ;
    var creditCardValid = /^[0-9]{16}$/ ; 
    var creditCarPINValid = /^[0-9]{4}$/ ; 
   
    
    
    //validate login form
    loginForm.addEventListener('click', function (event) {
        
        var lEmail = document.forms["loginForm"]["email"].value.trim();
        var lPaasword = document.forms["loginForm"]["password"].value.trim();
        
        if(lEmail === ""){
            
            event.preventDefault();
            LoginEmailLable.style.color = "red";
            LoginEmailLable.textContent = "This feild cannot be empty";
        }else if (!emailPattern.test(lEmail)) {

            event.preventDefault();
            LoginEmailLable.style.color = "red";
            LoginEmailLable.textContent = "Invalid Email address";

        }
        
        if(lPaasword ===""){
            
            event.preventDefault();
            LoginPwdLable.style.color = "red";
            LoginPwdLable.textContent = "This feild cannot be empty";
        }
        
         //set default colors and values after 3000ms
        setTimeout(function errorLogin() {

            LoginEmailLable.style.color = "grey";
            LoginEmailLable.textContent = "Email";
            
            LoginPwdLable.style.color = "grey";
            LoginPwdLable.textContent = "Password";

            

        }, 3000);

    });
   
   
   
    //validate signUp Form 
    signUpForm.addEventListener('click', function (event) {
        
        var sEmail = document.forms["signUpForm"]["email"].value.trim();
        var password = document.forms["signUpForm"]["password"].value.trim();
        var confirmpassword = document.forms["signUpForm"]["cpassword"].value.trim();
        var firstName = document.forms["signUpForm"]["first_name"].value.trim();
        var lastName = document.forms["signUpForm"]["last_name"].value.trim();
        var country = document.forms["signUpForm"]["country"].value;
        var address = document.forms["signUpForm"]["address"].value.trim();
        var creditCard = document.forms["signUpForm"]["credit_card"].value.trim();
        var creditCardPin = document.forms["signUpForm"]["credit_cardPin"].value.trim();
        
        if (sEmail === "") {

            event.preventDefault();
            signUpEmailLable.style.color = "red";
            signUpEmailLable.textContent = "Email cannot be Empty";
            

        } else if (!emailPattern.test(sEmail)) {

            event.preventDefault();
            signUpEmailLable.style.color = "red";
            signUpEmailLable.textContent = "Invalid Email address";

        }
        
        if (password === "") {
            event.preventDefault();
            signUppwdLabel.style.color = "red";
            signUppwdLabel.textContent = "Password cannot be Empty";
        }
        if (confirmpassword === "") {
            event.preventDefault();
            signUCppwdLabel.style.color = "red";
            signUCppwdLabel.textContent = "This feild cannot be Empty";
        }
        
        if(password !== confirmpassword){
            event.preventDefault();
            signUppwdLabel.style.color = "red";
            signUCppwdLabel.style.color = "red";
            signUppwdLabel.textContent = "Passwords miss matching";
        }
        
        if(firstName === ""){
            event.preventDefault();
            firstNameLabel.style.color = "red";
            firstNameLabel.textContent = "Enter Your first name";
            
        }else if(!checkForLetters.test(firstName)){
            event.preventDefault();
            firstNameLabel.style.color = "red";
            firstNameLabel.textContent = "Cannot contain numbers or Sybmols";
        }
        
        if(lastName === ""){
            event.preventDefault();
            laastNameLabel.style.color = "red";
            laastNameLabel.textContent = "Enter Your last name";
            
        }else if(!checkForLetters.test(lastName)){
            event.preventDefault();
            laastNameLabel.style.color = "red";
            laastNameLabel.textContent = "Cannot contain numbers or Sybmols";
        }
        
        if(country == 1){
            
            event.preventDefault();
            countryLabel.style.color = "red";
            countryLabel.textContent = "Choose Your Country";
        }
        
        if (address === "") {

            event.preventDefault();
            addressLabel.style.color = "red";
            addressLabel.textContent = "Address Cannot be Empty";
            
        }
        
        if (creditCard === "") {

            event.preventDefault();
            creditCardLabel.style.color = "red";
            creditCardLabel.textContent = "You must Enter a payment method";
            
        }else if(!creditCardValid.test(creditCard)){
           
            event.preventDefault();
            creditCardLabel.style.color = "red";
            creditCardLabel.textContent = "Credit card must contain 16 digits";
            
        }
        
        if (creditCardPin === "") {

            event.preventDefault();
            creditPinLabel.style.color = "red";
            creditPinLabel.textContent = "This field cannot be Empty";
            
        }else if(!creditCarPINValid.test(creditCardPin)){
           
            event.preventDefault();
            creditPinLabel.style.color = "red";
            creditPinLabel.textContent = "Pin must contain 4 digits";
            
        }
        
        //set default colors and values after 3000ms
        setTimeout(function error() {

            signUpEmailLable.style.color = "grey";
            signUpEmailLable.textContent = "Email";

            signUppwdLabel.style.color = "grey";
            signUppwdLabel.textContent = "Password";
            
            signUCppwdLabel.style.color = "grey";
            signUCppwdLabel.textContent = "Confirm Password";
            
            firstNameLabel.style.color = "grey";
            firstNameLabel.textContent = "First Name";
            
            laastNameLabel.style.color = "grey";
            laastNameLabel.textContent = "Last Name";
            
            countryLabel.style.color = "grey";
            countryLabel.textContent = "Country Select";
            
            addressLabel.style.color = "grey";
            addressLabel.textContent = "Enter your address";
            
            creditCardLabel.style.color = "grey";
            creditCardLabel.textContent = "Credit Card";
            
            creditPinLabel.style.color = "grey";
            creditPinLabel.textContent = "Pin Number";

        }, 3000);
        

    });
    
    
    
    
    //Show And Hide Cart
    cartIcon.addEventListener("click", function () {
        cart.classList.toggle("showCart");
        cart.classList.toggle("hideCart");
       
    });
    
    
    
});

function myTrim(x) {
  return x.replace(/\s/g, "");
}
