//do every thing afer the content is loaded on the screen
document.addEventListener('DOMContentLoaded' , function(){
   
    
    //cache the DOM
    var cart = document.getElementById("cart");
    var cartIcon = document.getElementById("cartIcon");
    var signUpForm = document.getElementById("submitForm");
    var signUpEmailLable = document.getElementById("emailLable");
    var signUppwdLabel = document.getElementById("passwordLable"); 
    var signUCppwdLabel = document.getElementById("cpasswordLable");
    var firstNameLabel = document.getElementById("fnameLabel");
    var laastNameLabel = document.getElementById("lnameLabel");
    var countryLabel = document.getElementById("countryLabel");
    var addressLabel = document.getElementById("addressLabel");
    var creditCardLabel = document.getElementById("creditCardLabel");
    var creditPinLabel = document.getElementById("creditPinLabel");
    
    
    
    var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/  ;
    var checkForLetters = /^[a-zA-Z]+$/ ;
    var creditCardValid = /^[0-9]{16}$/ ; 
    var creditCarPINValid = /^[0-9]{4}$/ ; 
   
    
   
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

document.addEventListener('DOMContentLoaded' , function(){
    var loginForm = document.getElementById('submitLForm');
    var loginEmailLable = document.getElementById("loginEmail");
    var loginPWDlable = document.getElementById("loginPWDlable");
    
    var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/  ;
    
    //validate login form 
    loginForm.addEventListener('click' , function (event){
        
        
        var logEmail = document.forms["loginForm"]["email"].value.trim();
        var logPassword = document.forms["loginForm"]["password"].value.trim();
        
        if(logEmail === ""){
            
            event.preventDefault();
            loginEmailLable.style.color = "red";
            loginEmailLable.textContent = "This feild cannot be empty";
        }else if(!emailPattern.test(logEmail)){
            
            event.preventDefault();
            loginEmailLable.style.color = "red";
            loginEmailLable.textContent = "Enter Email in vlaid format";
            
        }
        
        if(logPassword === ""){
            
            event.preventDefault();
            loginPWDlable.style.color = "red";
            loginPWDlable.textContent = "This feild cannot be empty";
        }
        
        //set default colors and values after 3000ms
        setTimeout(function error() {

            loginEmailLable.style.color = "grey";
            loginEmailLable.textContent = "Email";

            loginPWDlable.style.color = "grey";
            loginPWDlable.textContent = "Password";

        }, 3000);
        
        
    });
    
    
});


document.addEventListener('DOMContentLoaded' , function(){
    var AloginForm = document.getElementById('submitALform');
    var AloginEmailLable = document.getElementById("ALemailLable");
    var AloginPWDlable = document.getElementById("ALpwdLable");
    
    var AemailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/  ;
    
    //validate login form 
    AloginForm.addEventListener('click' , function (event){
        
        
        var AlogEmail = document.forms["adminloginForm"]["email"].value.trim();
        var AlogPassword = document.forms["adminloginForm"]["password"].value.trim();
        
        if(AlogEmail === ""){
            
            event.preventDefault();
            AloginEmailLable.style.color = "red";
            AloginEmailLable.textContent = "This feild cannot be empty";
        }else if(!AemailPattern.test(AlogEmail)){
            
            event.preventDefault();
            AloginEmailLable.style.color = "red";
            AloginEmailLable.textContent = "Enter Email in vlaid format";
            
        }
        
        if(AlogPassword === ""){
            
            event.preventDefault();
            AloginPWDlable.style.color = "red";
            AloginPWDlable.textContent = "This feild cannot be empty";
        }
        
        //set default colors and values after 3000ms
        setTimeout(function error() {

            AloginEmailLable.style.color = "grey";
            AloginEmailLable.textContent = "Email";

            AloginPWDlable.style.color = "grey";
            AloginPWDlable.textContent = "Password";

        }, 3000);
        
        
    });
    
    
});


document.addEventListener('DOMContentLoaded' , function(){
    var AddCatForm = document.getElementById('sumbitAddCat');
    var catNameLabel = document.getElementById("catNameLable");
    var catNameDesclabel = document.getElementById("catDescLable");
    var imageLable = document.getElementById("catImageLable");
    
   
    //validate Add Category form 
    AddCatForm.addEventListener('click' , function (event){
        
        
        var catName = document.forms["addCategory"]["bname"].value.trim();
        var CatDescription = document.forms["addCategory"]["bmanufast"].value.trim();
        var catImage = document.forms["addCategory"]["bimage"].value;
        
        if(catName === ""){
            
            event.preventDefault();
            catNameLabel.style.color = "red";
            catNameLabel.textContent = "Enter Categoy Name";
        }
        
        if(CatDescription === ""){
            
            event.preventDefault();
            catNameDesclabel.style.color = "red";
            catNameDesclabel.textContent = "Enter a valid Description";
        }
        
        if(catImage == ""){
            
            event.preventDefault();
            imageLable.style.color = "red";
            
        }
        
        //set default colors and values after 3000ms
        setTimeout(function error() {

            catNameLabel.style.color = "grey";
            catNameLabel.textContent = "Category Name";

            catNameDesclabel.style.color = "grey";
            catNameDesclabel.textContent = "Description";
            
            imageLable.style.color = "grey";
            

        }, 3000);
        
        
    });
    
    
});



document.addEventListener('DOMContentLoaded' , function(){
    var UpdateCatForm = document.getElementById('sumbitUpdateCat');
    var UcatNameLabel = document.getElementById("updateNameLabel");
    var UcatNameDesclabel = document.getElementById("updateDescLabel");
    var UimageLable = document.getElementById("updateImageLabel");
    
   
    //validate Update Category form 
    UpdateCatForm.addEventListener('click' , function (event){
        
        
        var UcatName = document.forms["updateCategory"]["bname"].value.trim();
        var UCatDescription = document.forms["updateCategory"]["bmanufast"].value.trim();
        var UcatImage = document.forms["updateCategory"]["bimage"].value;
        
        if(UcatName === ""){
            
            event.preventDefault();
            UcatNameLabel.style.color = "red";
            UcatNameLabel.textContent = "Enter Categoy Name";
        }
        
        if(UCatDescription === ""){
            
            event.preventDefault();
            UcatNameDesclabel.style.color = "red";
            UcatNameDesclabel.textContent = "Enter a valid Description";
        }
        
        if(UcatImage == ""){
            
            event.preventDefault();
            UimageLable.style.color = "red";
            
        }
        
        //set default colors and values after 3000ms
        setTimeout(function error() {

            UcatNameLabel.style.color = "grey";
            UcatNameLabel.textContent = "Category Name";

            UcatNameDesclabel.style.color = "grey";
            UcatNameDesclabel.textContent = "Description";
            
            UimageLable.style.color = "grey";
            

        }, 3000);
        
        
    });
    
    
});


document.addEventListener('DOMContentLoaded' , function(){
    var addItemForm = document.getElementById('sumbitAddItem');
    var itemNameLabel = document.getElementById("addItemNameLable");
    var itemPriceLabel = document.getElementById("addItemPriceLable");
    var itemDesclabel = document.getElementById("addItemDescLable");
    var itemCategorylabel = document.getElementById("addItemCatLable");
    var itemQTYLable = document.getElementById("addItemQTYLable");
    var itemimageLable = document.getElementById("addItemImageLable");
    
    var postiveNumber = /^\d*[1-9]\d*$/ ;
   
    //validate Update Category form 
    addItemForm.addEventListener('click' , function (event){
        
        
        var itemName = document.forms["addItemForm"]["iname"].value.trim();
        var itemPrice = document.forms["addItemForm"]["iprice"].value.trim();
        var itemDescription = document.forms["addItemForm"]["itemDesc"].value.trim();
        var itemCategory = document.forms["addItemForm"]["Icategory"].value;
        var itemQty = document.forms["addItemForm"]["qty"].value.trim();
        var ItemImage = document.forms["addItemForm"]["Iimage"].value;
        
        
        
        if(itemName === ""){
            
            event.preventDefault();
            itemNameLabel.style.color = "red";
            itemNameLabel.textContent = "Enter Item Name";
        }
        
        if(itemPrice === ""){
            
            event.preventDefault();
            itemPriceLabel.style.color = "red";
            itemPriceLabel.textContent = "This feild cannot be Empty";
        }else if(!postiveNumber.test(itemPrice)){
            event.preventDefault();
            itemPriceLabel.style.color = "red";
            itemPriceLabel.textContent = "Enter a valid price";
        }
        
        if(itemDescription == ""){
            
            event.preventDefault();
            itemDesclabel.style.color = "red";
            itemDesclabel.textContent = "Enter a valid Description";
            
        }
        if(itemCategory == "1"){
            event.preventDefault();
            itemCategorylabel.style.color = "red";
            
        }
        
        if(itemQty == ""){
            event.preventDefault();
            itemQTYLable.style.color = "red";
            itemQTYLable.textContent = "This field cannot be Empty"; 
        }else if(!postiveNumber.test(itemQty)){
            event.preventDefault();
            itemQTYLable.style.color = "red";
            itemQTYLable.textContent = "Quantity must be valid value";
        }
        
        if(ItemImage == ""){
            event.preventDefault();
            itemimageLable.style.color = "red";
            
        }
        //set default colors and values after 3000ms
        setTimeout(function error() {

            itemNameLabel.style.color = "grey";
            itemNameLabel.textContent = "Item Name";
            
            itemPriceLabel.style.color = "grey";
            itemPriceLabel.textContent = "Item Price";

            itemDesclabel.style.color = "grey";
            itemDesclabel.textContent = "Description";
            
            itemCategorylabel.style.color = "grey";
            
            itemQTYLable.style.color = "grey";
            itemQTYLable.textContent = "Quantity";
            
            itemimageLable.style.color = "grey";

        }, 3000);
        
        
    });
    
    
});



document.addEventListener('DOMContentLoaded' , function(){
    var updateItemForm = document.getElementById('sumbitUpdateItem');
    var updateNameLabel = document.getElementById("updateItemNameLable");
    var updatePriceLabel = document.getElementById("updateItemPriceLable");
    var updateDesclabel = document.getElementById("updateItemDescLable");
    var updateCategorylabel = document.getElementById("updateItemCatLable");
    var updateQTYLable = document.getElementById("updateItemQTYLable");
    var updateimageLable = document.getElementById("updateItemImageLable");
    
    var postiveNumber = /^\d*[1-9]\d*$/ ;
   
    //validate Update Category form 
    updateItemForm.addEventListener('click' , function (event){
        
        
        var UitemName = document.forms["UpdateItemForm"]["iname"].value.trim();
        var UitemPrice = document.forms["UpdateItemForm"]["iprice"].value.trim();
        var UitemDescription = document.forms["UpdateItemForm"]["itemDesc"].value.trim();
        var UitemCategory = document.forms["UpdateItemForm"]["Icategory"].value;
        var UitemQty = document.forms["UpdateItemForm"]["qty"].value.trim();
        var UItemImage = document.forms["UpdateItemForm"]["Iimage"].value;
        
        
        
        if(UitemName === ""){
            
            event.preventDefault();
            updateNameLabel.style.color = "red";
            updateNameLabel.textContent = "Enter Item Name";
        }
        
        if(UitemPrice === ""){
            
            event.preventDefault();
            updatePriceLabel.style.color = "red";
            updatePriceLabel.textContent = "This feild cannot be Empty";
        }else if(!postiveNumber.test(UitemPrice)){
            event.preventDefault();
            updatePriceLabel.style.color = "red";
            updatePriceLabel.textContent = "Enter a valid price";
        }
        
        if(UitemDescription == ""){
            
            event.preventDefault();
            updateDesclabel.style.color = "red";
            updateDesclabel.textContent = "Enter a valid Description";
            
        }
        if(UitemCategory == "1"){
            event.preventDefault();
            updateCategorylabel.style.color = "red";
            
        }
        
        if(UitemQty == ""){
            event.preventDefault();
            updateQTYLable.style.color = "red";
            updateQTYLable.textContent = "This field cannot be Empty"; 
        }else if(!postiveNumber.test(UitemQty)){
            event.preventDefault();
            updateQTYLable.style.color = "red";
            updateQTYLable.textContent = "Quantity must be valid value";
        }
        
        if(UItemImage == ""){
            event.preventDefault();
            updateimageLable.style.color = "red";
            
        }
        //set default colors and values after 3000ms
        setTimeout(function error() {

            updateNameLabel.style.color = "grey";
            updateNameLabel.textContent = "Item Name";
            
            updatePriceLabel.style.color = "grey";
            updatePriceLabel.textContent = "Item Price";

            updateDesclabel.style.color = "grey";
            updateDesclabel.textContent = "Description";
            
            updateCategorylabel.style.color = "grey";
            
            updateQTYLable.style.color = "grey";
            updateQTYLable.textContent = "Quantity";
            
            updateimageLable.style.color = "grey";

        }, 10000);
        
        
    });
    
    
});

document.addEventListener('DOMContentLoaded' , function (){

    var UpdateUBasics = document.getElementById('sumbitUBasics');
    var updateFNameLable = document.getElementById('updteFnameLable');
    var updateLNameLable = document.getElementById('updteLnameLable');
    var updateEmailLable = document.getElementById('updteEmailLable');
    var updateCountryLable = document.getElementById('updteCountryLable');
    var updateAddressLable = document.getElementById('updteAddressLable');
    
    
    var UemailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/  ;
    var UcheckForLetters = /^[a-zA-Z]+$/ ;
    
    

        UpdateUBasics.addEventListener('click', function (event) {
            
            
            var NewFirstName = document.forms["updateUSerBForm"]["first_name"].value.trim();
            var NewLastName = document.forms["updateUSerBForm"]["last_name"].value.trim();
            var NewEmail = document.forms["updateUSerBForm"]["email"].value.trim();
            var NewCountry = document.forms["updateUSerBForm"]["country"].value;
            var NewAddress = document.forms["updateUSerBForm"]["address"].value.trim();
            
            
            if(NewFirstName === ""){
                event.preventDefault();
                updateFNameLable.style.color = "red";
                updateFNameLable.textContent = "Enter Your first name";
            
            }else if(!UcheckForLetters.test(NewFirstName)){
                event.preventDefault();
                updateFNameLable.style.color = "red";
                updateFNameLable.textContent = "Cannot contain numbers or Sybmols";
            }
           
            if(NewLastName === ""){
                event.preventDefault();
                updateLNameLable.style.color = "red";
                updateLNameLable.textContent = "Enter Your first name";
            
            }else if(!UcheckForLetters.test(NewLastName)){
                event.preventDefault();
                updateLNameLable.style.color = "red";
                updateLNameLable.textContent = "Cannot contain numbers or Sybmols";
            }
           
            if (NewEmail === "") {

                event.preventDefault();
                updateEmailLable.style.color = "red";
                updateEmailLable.textContent = "Email cannot be Empty";
            

            } else if (!UemailPattern.test(NewEmail)) {

                event.preventDefault();
                updateEmailLable.style.color = "red";
                updateEmailLable.textContent = "Invalid Email address";

            }
            
            if(NewCountry == "1"){
                
                event.preventDefault();
                updateCountryLable.style.color = "red";
            }
            
            if (NewAddress === "") {

                event.preventDefault();
                updateAddressLable.style.color = "red";
                updateAddressLable.textContent = "Address Cannot be Empty";
            
            }

            setTimeout(function error() {

                updateFNameLable.style.color = "grey";
                updateFNameLable.textContent = "First Name";
                
                updateLNameLable.style.color = "grey";
                updateLNameLable.textContent = "First Name";

                updateEmailLable.style.color = "grey";
                updateEmailLable.textContent = "Email";
            
                updateCountryLable.style.color = "grey";
            
                updateAddressLable.style.color = "grey";
                updateAddressLable.textContent = "Enter your address";
            
              

            }, 3000);


        });
        


});


document.addEventListener('DOMContentLoaded' , function (){

    var UpdateUPWD = document.getElementById('changePWDFormSumbit');
    var oldPWDlabel = document.getElementById('oldPWDlabel');
    var newPWDlabel = document.getElementById('newPWDlabel');
    var confirmPWDlabel = document.getElementById('ConfirmPWDlabel');
    
   
    
        UpdateUPWD.addEventListener('click', function (event) {
            
            var oldPassword = document.forms["changePwdForm"]["oldPword"].value.trim();
            var newPassword = document.forms["changePwdForm"]["newPassword"].value.trim();
            var confirmPassword = document.forms["changePwdForm"]["confirmPwd"].value.trim();
            
            if(oldPassword == ""){
                
                 event.preventDefault();
                 oldPWDlabel.style.color = "red";
                 oldPWDlabel.textContent = "This field cannot be Empty";
                 
            }
            
            if(newPassword == ""){
                
                 event.preventDefault();
                 newPWDlabel.style.color = "red";
                 newPWDlabel.textContent = "This field cannot be null";
                 
            }
       
            if(confirmPassword == ""){
                
                 event.preventDefault();
                 confirmPWDlabel.style.color = "red";
                 confirmPWDlabel.textContent = "This field cannot be null";
                 
            }
            
            if(newPassword != confirmPassword){
                
                 event.preventDefault();
                 newPWDlabel.style.color = "red";
                 newPWDlabel.textContent = "Passwords missed matching";
                 confirmPWDlabel.style.color = "red";
                 
                
            }
            
            setTimeout(function error() {

                oldPWDlabel.style.color = "grey";
                oldPWDlabel.textContent = "Old Password";
                
                newPWDlabel.style.color = "grey";
                newPWDlabel.textContent = "New Password";

                confirmPWDlabel.style.color = "grey";
                confirmPWDlabel.textContent = "Confirm New Password";
            
            }, 3000);


           
            
        });

});


document.addEventListener('DOMContentLoaded' , function (){

    var UpdateUCreditCard = document.getElementById('creditCardUpdate');
    var creditCardlabel = document.getElementById('curentCCardLabel');
    var Pinlabel = document.getElementById('curentPinLabel');
    
    var NewcreditCardValid = /^[0-9]{16}$/ ; 
    var NewCarPINValid = /^[0-9]{4}$/ ; 
   
    
        UpdateUCreditCard.addEventListener('click', function (event) {
            
            var newcreditCard = document.forms["updateCreditCardForm"]["creditCard"].value.trim();
            var newCPin = document.forms["updateCreditCardForm"]["pin"].value.trim();
            
            
            if(newcreditCard == ""){
                
                event.preventDefault();
                creditCardlabel.style.color = "red";
                creditCardlabel.textContent = "Fill out this field";
            }else if(!NewcreditCardValid.test(newcreditCard)){
           
                event.preventDefault();
                creditCardlabel.style.color = "red";
                creditCardlabel.textContent = "Credit card must contain 16 digits";
            
            }
        
            
            if(newCPin == ""){
                
                event.preventDefault();
                Pinlabel.style.color = "red";
                Pinlabel.textContent = "Fill out this field";
            }else if(!NewCarPINValid.test(newCPin)){
           
                event.preventDefault();
                Pinlabel.style.color = "red";
                Pinlabel.textContent = "Pin must contain 4 digits";
            
            }
            
            setTimeout(function error() {

                creditCardlabel.style.color = "grey";
                creditCardlabel.textContent = "Credit Card";
                
                Pinlabel.style.color = "grey";
                Pinlabel.textContent = "Pin Number";


            }, 3000);

        
        });

});


function myTrim(x) {
  return x.replace(/\s/g, "");
}

 