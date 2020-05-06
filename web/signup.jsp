<%-- 
    Document   : signup
    Created on : Mar 1, 2020, 4:16:59 PM
    Author     : noobmaster
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %> 


<!DOCTYPE html>
<html>

    <head>
        <title>signup</title>
        <link href="css/eShop.css" rel="stylesheet"> 
        <link href="css/fontawesome-free-5.12.1-web/css/all.css" rel="stylesheet"> <!--load all styles -->
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <style>
    
            body {
        
                background-image: url(https://raw.githubusercontent.com/Shihara-Dilshan/img/master/bgtg.jpg);
            
            }

        </style>  
        <script>
            
            var resulSignUp = "regFailed";
           
            
            document.addEventListener("DOMContentLoaded" , function(){
                
                if(resulSignUp === '<%= request.getParameter("result")%>' ){
          
                        M.toast({ html: "Something Went Wrong!" });
          
                }
   
                
            });
             
           
        </script>
    </head>
    


    <body id="Home" class="scrollspy test">
        <%
            if (session.getAttribute("useremail") == null) {

        %>        

        <%@ include file="includes\headerNormal.jsp"  %>  

        <% } else { %> 

        <%@ include file="includes\headerlogin.jsp"  %>  


        <% }%> 

        <%@ include file="includes/cart.jsp"  %>  



        <form name="signUpForm" method="post" action="signup">
            <div class="container">

                <div class="card-panel z-depth-3 grey lighten-5" style="border-style: solid; border-color: teal; border-radius: 5px;">
                    <div class="row">
                        <div class="col s12">
                            <div class="card-title center teal-text">
                                <h4>Sign up Form</h4>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col s12">
                           
                                <div class="input-field col s12 m6">
                                    <input  id="first_name" type="text" class="validate" name="first_name">
                                    <label for="first_name" id="fnameLabel">First Name</label>
                                </div>
                                <div class="input-field col s12 m6">
                                    <input id="last_name" type="text" class="validate" name="last_name">
                                    <label for="last_name" id="lnameLabel">Last Name</label>
                                </div>
                          
                                <div class="input-field col s12">
                                    <input id="email" type="email" name="email">
                                    <label for="email" id="emailLable">Email</label>
                                </div>
                           

                           
                                <div class="input-field col s12 m6">
                                    <input id="password" type="password" class="validate" name="password">
                                    <label for="password" id="passwordLable">Password</label>
                                </div>
                                <div class="input-field col s12 m6">
                                    <input id="cpassword" type="password" class="" name="cpassword">
                                    <label for="cpassword" id="cpasswordLable">Confirm Password</label>
                                </div>
                            

                            
                            <div class="input-field col s12">
                                <select  name="country">
                                    <option value="1" disabled selected>Choose your Country</option>
                                    <option value="Sri Lanka">Sri Lanka </option>
                                    <option value="India">India</option>
                                    <option value="Pakistan">Pakistan</option>
                                </select>
                                <label id="countryLabel">Country Select</label>
                            </div>


                            <div class="input-field col s12">
                                <textarea id="textarea" class="materialize-textarea" name="address"></textarea>
                                <label for="address" id="addressLabel">Enter your address</label>
                            </div>
                            <div class="input-field col s12 m8">
                                    <input  id="credit_card" type="text" class="validate" name="credit_card">
                                    <label for="credit_card" id="creditCardLabel">Credit Card</label>
                            </div>
                            <div class="input-field col s12 m4">
                                    <input  id="credit_cardPin" type="password" class="validate" name="credit_cardPin">
                                    <label for="credit_cardPin" id="creditPinLabel">Pin Number</label>
                            </div>

                           
                            <div class="row">
                                <div class="col s12">
                                    <input type="submit" id="submitForm" value="submit" class="btn" style="width:100%;">

                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </form>
        <!--Java script at end of body for optimized loading-->
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script type="text/javascript" src="js/App.js"></script>

        <script>
            $(document).ready(function () {
                $('.sidenav').sidenav();

            });

            $(document).ready(function () {
                $('.slider').slider({indicators: false, height: 350, transition: 500, interval: 6000});
            });

            $(document).ready(function () {
                $('.materialboxed').materialbox();
            });
            $(document).ready(function () {
                $('select').formSelect();
            });
        </script>



        <%@ include file="includes\footer.jsp"  %> 


    </body>
</html>
