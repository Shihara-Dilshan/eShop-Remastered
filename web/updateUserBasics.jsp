<%-- 
    Document   : updateUserBasics
    Created on : Apr 25, 2020, 8:57:00 AM
    Author     : noobmaster
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <script>
            document.addEventListener("DOMContentLoaded" , function(){
                
              var oldNmae =  document.getElementById('oldN');
              oldNmae.style.display = "none";
                
            });
        
        
        </script>
        
        
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



        <form method="post" action="updateUserBasics">
            <div class="container">
          
                    
                <div class="card-panel z-depth-3 grey lighten-5" style="border-style: solid; border-color: teal; border-radius: 5px;">
                    
                   
                    
                    <div class="row">
                        <div class="col s12">
                            <div class="card-title center teal-text">
                                <h4>Edit Profile</h4>
                            </div>
                        </div>
                    </div>
                     <div class="row" id="oldN">
                        <div class="input-field col s12">
                            
                            <input type="text" value="<%= request.getParameter("email") %>" name="OldEmail">
                        </div>
                    </div>
                    
                    
                    <div class="row">
                        <div class="col s12">
                           
                                <div class="input-field col s12 m6">
                                    <input  id="first_name" type="text" class="validate" name="first_name" value="<%= request.getParameter("fname") %>">
                                    <label for="first_name">First Name</label>
                                </div>
                                <div class="input-field col s12 m6">
                                    <input id="last_name" type="text" class="validate" name="last_name" value="<%= request.getParameter("lname") %>">
                                    <label for="last_name">Last Name</label>
                                </div>
                          
                                <div class="input-field col s12">
                                    <input id="email" type="email" class="validate" name="email" value="<%= request.getParameter("email") %>">
                                    <label for="email">Email</label>
                                </div>
                           

                           
                                
                            

                            
                            <div class="input-field col s12">
                                <select  name="country">
                                    <option value="" disabled selected>Choose your Country</option>
                                    <option value="Sri Lanka">Sri Lanka </option>
                                    <option value="India">India</option>
                                    <option value="Pakistan">Pakistan</option>
                                </select>
                                <label>Select Your Country</label>
                            </div>


                            <div class="input-field col s12">
                                <textarea id="textarea" class="materialize-textarea" name="address"><%= request.getParameter("addres") %></textarea>
                                <label for="address">Enter your address</label>
                            </div>
                            

                           
                            <div class="row">
                                <div class="col s12">
                                    
                                    <button type="submit" class="btn" style="width: 100%; vertical-align:-18px;width:100%;">update <i class="material-icons" style="vertical-align: -4px;">update</i></button>            
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
