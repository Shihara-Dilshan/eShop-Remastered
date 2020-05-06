<%-- 
    Document   : login
    Created on : Mar 1, 2020, 2:18:58 PM
    Author     : noobmaster
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

  <!DOCTYPE html>
  <html>
    <head>
      <title>Login</title>
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
            
            var resulLogin = "failed";
           
            
            document.addEventListener("DOMContentLoaded" , function(){
                
                if(resulLogin === '<%= request.getParameter("result")%>' ){
          
                        M.toast({ html: "Invalid Credentials!" });
          
                }
   
                
            });
             
           
    </script>
    </head>
    

    <body id="Home" class="scrollspy test">
     <%
        if(session.getAttribute("useremail") == null){       
     %>        
    
     <%@ include file="includes\headerNormal.jsp"  %>  
            
     <% }else{ %> 
    
     <%@ include file="includes\headerlogin.jsp"  %>  
     <% } %> 
  <%@ include file="includes/cart.jsp"  %>   
  
  <div class="container" id="myForm">    
      <form name="loginForm" action="login" method="post">  


          <div class="card-panel z-depth-3 grey lighten-5" style="border-style: solid; border-color: teal; border-radius: 5px;">
              <div class="row">
                  <div class="col s12">
                      <div class="card-title center-align teal-text">
                          <h4>Login</h4>
                      </div>
                  </div>
              </div>
              <div class="row">
                  <div class="input-field col s12">
                      <input id="email" type="email" name="email">
                      <label id="loginEmail" for="email">Email</label>
                  </div>
              </div>

              <div class="row">
                  <form class="col s12">

                      <div class="row">
                          <div class="input-field col s12">
                              <input id="password" type="password" class="validate" name="password">
                              <label id="loginPWDlable" for="password">Password</label>
                          </div>
                      </div>

                      <p class="center">
                          <label>
                              <input type="checkbox" class="filled-in" checked="checked" />
                              <span>Remember me</span>
                          </label>
                      </p>


                      <div class="row">
                          <div class="col s12">
                              <input type="submit" id="submitLForm" value="login" class="btn" style="width:100%;">

                          </div>

                      </div>

              </div>
          </div>


      </form>
  </div>

      
  <!--JavaScript at end of body for optimized loading-->
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script type="text/javascript" src="js/materialize.min.js"></script>
  <script type="text/javascript" src="js/App.js"></script>

  <script>
          $(document).ready(function(){
          $('.sidenav').sidenav();
        
          });

          $(document).ready(function(){
          $('.slider').slider({indicators: false, height: 350, transition : 500,interval : 6000});
          });

          $(document).ready(function(){
          $('.materialboxed').materialbox();
          });
          $(document).ready(function(){
          $('select').formSelect();
          });
  </script>
      

      
 <%@ include file="includes\footer.jsp"  %> 
 

 </body>
 </html>
  
