<%-- 
    Document   : adminlogin
    Created on : Mar 7, 2020, 6:45:10 PM
    Author     : noobmaster
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

  <!DOCTYPE html>
  <html>
    <head>
      <title>Admin Login</title>
      <link href="css/eShop.css" rel="stylesheet"> 
      <link href="css/fontawesome-free-5.12.1-web/css/all.css" rel="stylesheet"> <!--load all styles -->
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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
        
    
     <%@ include file="includes/headerNormal.jsp"  %>  
            
   

      <!--JavaScript at end of body for optimized loading-->
      <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
      
      <form name="adminloginForm" action="adminlogin" method="post">  
      <div class="container" id="myForm">
      
           <div class="card-panel z-depth-3 grey lighten-5" style="border-style: solid; border-color: teal; border-radius: 5px;">
  <div class="row">
        <div class="col s12">
            <div class="card-title center-align teal-text">
                <h4>Admin Login</h4>
            </div>
        </div>
  </div>
  <div class="row">
        <div class="input-field col s12">
          <input id="email" type="email" class="validate" name="email">
          <label id="ALemailLable" for="email">Email</label>
        </div>
      </div>
  
  <div class="row">
    <form class="col s12">
      
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" class="validate" name="password">
          <label id="ALpwdLable" for="password">Password</label>
        </div>
      </div>

      <p class="center">
      <label>
        <input type="checkbox" class="filled-in" checked="checked" />
        <span>Remeber me</span>
      </label>
     </p>
      
      
      <div class="row">
        <div class="col s12">
        <input id="submitALform" type="submit" value="Log in" class="btn" style="width:100%;">
        
        </div>
      
      </div>
    </form>
  </div>
  </div>
      
      </div>
      </form>


      
      <!--JavaScript at end of body for optimized loading-->
      <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
      <script type="text/javascript" src="js/App.js"></script>
      <script>
          /*$(document).ready(function(){
          $('.sidenav').sidenav();
        
          });
          */
          document.addEventListener('DOMContentLoaded' , function () {
              
             var sidenav = document.querySelector('.sidenav');
             M.Sidenav.init(sidenav);
              
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
      
      <%@ include file="includes/adminfooter.jsp"  %> 
      
      
    </body>
  </html>
  
