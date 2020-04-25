<%-- 
    Document   : purchusePage
    Created on : Apr 25, 2020, 2:39:04 PM
    Author     : noobmaster
--%>

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
      <script>
    
        document.addEventListener('DOMContentLoaded' , function(){
        
            var i;
            var TotalPrice = 0;
        
            var priceNodeList = document.getElementsByClassName('price');
        
            for(i = 0; i < priceNodeList.length; i++){
            
                TotalPrice = TotalPrice + parseInt(priceNodeList[i].innerHTML);
            
            }
        
            document.getElementById('TotlPrice').innerHTML = "Total : " + TotalPrice;
        
            });
    
    

      </script>
      
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

                     <h5><i class="material-icons teal-text">add_shopping_cart</i>My<span class="teal-text">Cart</span>
                     <button class="btn red right disabled" id="TotlPrice"> </button>
                     </h5>
                 </div>
                     <tr>
                         <th class="left" style="padding-left: 20px;">Item</th>
                         <th>Price</th>

                         <th>Remove</th>
                     </tr>
                 </thead>

                 <tbody id="book-list">
                     <%
                         ArrayList<Item> MobilearrayList = new ArrayList<Item>();
                         if (request.getServletContext().getAttribute("cartItemList") != null) {
                             MobilearrayList = (ArrayList<Item>) request.getServletContext().getAttribute("cartItemList");
                         }

                         if (!MobilearrayList.isEmpty()) {

                             for (Item item : MobilearrayList) {


                     %>
                     <tr>
                         <td class="left" style="padding-left: 20px;"><%=item.getItemName()%></td>
                         <td class="price"><%=item.getItemPrice()%></td>

                         <td> <a href="removeFromCart?itemName=<%=item.getId() %>"><i class="material-icons">delete</i></a></td>
                     </tr>    




                     <%

                             }

                         }

                     %>
                 </tbody>
             </table>
                 <div style="text-align: center;padding-top: 20px;">
                     <button type="submit" class="btn waves-effect waves-light" type="submit" name="action">Buy
                             <i class="material-icons right">add_shopping_cart</i>
                         </button>
                    

                 </div>
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
  
