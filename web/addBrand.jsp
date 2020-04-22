     
    <%
        if(session.getAttribute("adminemail") == null){
        
            response.sendRedirect("adminlogin.jsp");
       
        }
            
    %>
    
    

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
      
      
    </head>
    
    
    

    <body id="Home" class="scrollspy test" background="image/gray-and-black-hive-printed-textile-691710.jpg">
   <!--UNREGISTERED USER'S HEADER-->

    

   
   
    
   
     <%@ include file="includes\adminheaderNormal.jsp"  %>  
            
     
      <form action="addBrand" method="post" >  
      <div class="container" id="myForm" >
      
      <div class="card-panel z-depth-3">
        <div class="row">
        <div class="col s12">
            <div class="card-title center-align teal-text">
                <h4>Add a brand</h4>
            </div>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="email" type="text" class="validate" name="bname">
          <label for="email">Brand Name</label>
        </div>
      </div>
  
      <div class="row">
          
      
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="text" class="validate" name="bmanufast">
          <label for="password">Manufacture's name</label>
        </div>
      </div>
      <br>
      <div class="row">
          <div class="input-feild col s12 ">  
               <label for="password">Select an image</label>
              <input type="file" class="validate" >
              
             
          </div>
      </div>
      <br><br>
      
      
      <div class="row">
        <div class="col s12">
        <input type="submit" value="Submit" class="btn" style="width:100%;">
        
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
      <script type="text/javascript" src="js/removeVal.js"></script>
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
         
          
      </script>
      

       <%@ include file="includes\adminfooter.jsp"  %> 
    </body>
  </html>