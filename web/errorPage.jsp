<%-- 
    Document   : errorPage
    Created on : Apr 23, 2020, 2:24:22 PM
    Author     : noobmaster
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="true"%>

  <!DOCTYPE html>
  <html>
      <head>
          <title>Error Page</title>
          <link href="css/eShop.css" rel="stylesheet"> 
          <link href="css/fontawesome-free-5.12.1-web/css/all.css" rel="stylesheet"> <!--load all styles -->
          <!--Import Google Icon Font-->
          <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
          <!--Import materialize.css-->
          <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

          <!--Let browser know website is optimized for mobile-->
          <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      </head>

      <body id="Home" class="scrollspy test" background="image/gray-and-black-hive-printed-textile-691710.jpg">
          <%@ include file="includes\adminheaderNormal.jsp"  %>    
          <%
              if (session.getAttribute("adminemail") == null) {

                  response.sendRedirect("adminlogin.jsp");

              }

          %>        









          <!--JavaScript at end of body for optimized loading-->
          <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
          <script type="text/javascript" src="js/materialize.min.js"></script>
          <script type="text/javascript" src="js/removeVal.js"></script>

         
              
          
      <div class="container" id="myForm">
      
 <div class="card-panel z-depth-3 ">
  <div class="row">
        <div class="col s12">
            <div class="card-title center-align red-text">
                <h4>Some thing went Wrong </h4>
            </div>
        </div>
  </div>
  <div class="row">
        <div class="input-field col s12">
            <input id="email" type="email" class="validate" name="email" placeholder="Check data base connection" disabled>
          
        </div>
      </div>
  
   <div class="row">
        <div class="input-field col s12">
            <input id="email" type="email" class="validate" name="email" placeholder="Try reloading your page" disabled>
          
        </div>
      </div>

       <div class="row">
        <div class="input-field col s12 ">
            <input id="email" type="email" class="validate" name="email" placeholder="Disable web application for users and try Agian" disabled>
          
        </div>
      </div>
      
      
      <div class="row">
        <div class="col s6">
         <a href="adminindex.jsp">
                  <input type="submit" value="Dashboard" class="btn" style="width:100%;" onclick="removeValues()">
              </a>
        
        </div>
          <div class="col s6">
              <a href="ManageItem.jsp">
                  <input type="submit" value="Try Again" class="btn red" style="width:100%;" onclick="removeValues()">
              </a>
        </div>
          
      
      </div>
    
  </div>
  </div>
      
      
              
              
       


      <!--JavaScript at end of body for optimized loading-->
      <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>

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