<%-- 
    Document   : changePassword
    Created on : Apr 25, 2020, 11:45:17 AM
    Author     : noobmaster
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
  <html>
    <head>
      <title>Change Password</title>
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
            
            document.addEventListener("DOMContentLoaded" , function(){
                
              var oldNmae =  document.getElementById('oldN');
              oldNmae.style.display = "none";
                
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
  
      
  <form name="changePwdForm" action="ChangeUserPassword" method="post">  
      <div class="container" id="myForm">
      
          <div class="card-panel z-depth-3 grey lighten-5" style="border-style: solid; border-color: teal; border-radius: 5px;">
  <div class="row">
        <div class="col s12">
            <div class="card-title center-align teal-text">
                <h4>Change Password</h4>
            </div>
        </div>
  </div>
   
  
  
  <div class="row">
    <div class="col s12">
      
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" name="oldPword">
          <label id="oldPWDlabel" for="oldPword">Old Password</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" class="validate" name="newPassword">
          <label id="newPWDlabel" for="newPassword">New Password</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" class="validate" name="confirmPwd">
          <label id="ConfirmPWDlabel" for="confirmPwd">Confirm New Password</label>
        </div>
      </div>
        <div class="row" id="oldN">
            <div class="input-field col s12">

                <input  type="text" value="<%= request.getParameter("email")%>" name="OldEmail">
            </div>
        </div>
                    
    <p class="center">
      <label>
        
          <span class="red-text">We will not share your credentials with any 3rd party members</span>
      </label>
     </p>
      
      
      <div class="row">
        <div class="col s12">
            <button id="changePWDFormSumbit" type="submit" class="btn" style="width:100%;">update <i class="material-icons" style="vertical-align: -4px;">update</i></button>
        
        </div>
      
      </div>
   </div>
  </div>
  </div>
      
  </div>
  </form>


      
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
  
