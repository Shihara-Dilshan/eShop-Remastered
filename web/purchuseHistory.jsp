<%-- 
    Document   : purchuseHistory
    Created on : May 8, 2020, 7:44:05 PM
    Author     : noobmaster
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="lk.eShop.dao.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        if(session.getAttribute("useremail") == null){
        
        
            response.sendRedirect("login.jsp");
        
        
        
        }
            
%>        


  <!DOCTYPE html>
  <html>
    <head>
      <title>Purchuse</title>
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
    

    <body id="Home" class="scrollspy test" background="image/woman-draw-a-light-bulb-in-white-board-37581051.jpg">
  <%@ include file="includes/Navbar.jsp"  %>  
      

     <section id="cartSection">
         <form action="buy" method="post" class="container white aCont" style="margin-top: 2%;">
             <table class="striped highlight centered" style="height: 100%;">
                 <thead>
                 <div class="col s12 center-align" style="padding-top: 2%;">

                     <h5><i class="material-icons teal-text">airport_shuttle</i>My<span class="teal-text">Purchases</span>
                     <button class="btn red right disabled" id="TotlPrice"> </button>
                     </h5>
                 </div>
                     <tr>
                         <th class="left" style="padding-left: 20px;">Item</th>
                         <th>Price</th>

                         <th>Purchase Date</th>
                     </tr>
                 </thead>

                 <tbody id="book-list">
                     <%
                         DataSource source = new DataSource();
                         Connection con = source.createConnection();
                         PreparedStatement st = con.prepareStatement("select I.name , I.price , IC.PDate from ItemCopy AS IC inner join item AS I ON I.id = IC.itemId where IC.cusid = ? order by IC.PDate");

                         int UserID = (int)session.getAttribute("userID");
                         st.setInt(1, UserID);
                         
                         ResultSet rs = st.executeQuery();
                         int x = 1;

                         while (rs.next()) {


                     %>
                     <tr>
                         <td class="left" style="padding-left: 20px;"><%=rs.getString("I.name")%></td>
                         <td class="price"><%=rs.getString("I.price")%></td>
                         <td class="price"><%=rs.getString("IC.PDate")%></td>
                     </tr>    




                     <%

                             

                         }

                     %>
                 </tbody>
             </table>
                 
         </form>
                 
     </section>



      
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
      


 

 </body>
 </html>
  
