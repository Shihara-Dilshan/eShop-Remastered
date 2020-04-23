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



        <form method="post" action="signup">
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
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s12 m6">
                                    <input  id="first_name" type="text" class="validate">
                                    <label for="first_name">First Name</label>
                                </div>
                                <div class="input-field col s12 m6">
                                    <input id="last_name" type="text" class="validate">
                                    <label for="last_name">Last Name</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="email" type="email" class="validate" name="email">
                                    <label for="email">Email</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s12 m6">
                                    <input id="password" type="password" class="validate" name="password">
                                    <label for="password">Password</label>
                                </div>
                                <div class="input-field col s12 m6">
                                    <input id="cpassword" type="password" class="" name="cpassword">
                                    <label for="cpassword">Confirm Password</label>
                                </div>
                            </div>






                            <div class="row">
                                <div class="input-field col s12">
                                    <input disabled value="I am not editable" id="disabled" type="text" class="validate">
                                    <label for="disabled">Disabled</label>
                                </div>
                            </div>
                            <div class="input-field col s12">
                                <select>
                                    <option value="" disabled selected>Choose your option</option>
                                    <option value="1">Option 1</option>
                                    <option value="2">Option 2</option>
                                    <option value="3">Option 3</option>
                                </select>
                                <label>Materialize Select</label>
                            </div>

                            <div class="input-field col s12">
                                <select multiple>
                                    <option value="" disabled selected>Choose your option</option>
                                    <option value="1">Option 1</option>
                                    <option value="2">Option 2</option>
                                    <option value="3">Option 3</option>
                                </select>
                                <label>Materialize Multiple Select</label>
                            </div>


                            <div class="row">
                                <div class="col s12">
                                    This is an inline input field:
                                    <div class="input-field inline">
                                        <input id="email_inline" type="email" class="validate">
                                        <label for="email_inline">Email</label>
                                        <span class="helper-text" data-error="wrong" data-success="right">Helper text</span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s12">
                                    <input type="submit" value="submit" class="btn" style="width:100%;">

                                </div>

                            </div>
                        </form>
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
