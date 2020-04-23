<%-- 
    Document   : item
    Created on : Apr 18, 2020, 10:46:44 PM
    Author     : noobmaster
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="lk.eShop.dao.DataSource"%>



<!DOCTYPE html>
<html>
<head>
      
<!--My CSS -->
<link href="css/eShop.css" rel="stylesheet"> 
<link href="css/fontawesome-free-5.12.1-web/css/all.css" rel="stylesheet"> 
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
  
<%@ include file="includes/Navbar.jsp"  %>  
  

<script>
    
    document.addEventListener('DOMContentLoaded' , function(){
        
      
       var showList = document.getElementsByClassName('<%= request.getParameter("show") %>');
       var i;
       
       
       for(i=0; i < showList.length; i++){
            
            showList[i].classList.add('show'); 
            showList[i].classList.remove('hide');
           
       }
    
   
    });
    
    document.addEventListener('DOMContentLoaded' , function(){
        
      var type = "showAll";
      var result = "success";
      var resultDel = "delected";
      var i;
        
      if(type === '<%= request.getParameter("show") %>' ){
      
        var showItems = document.getElementsByClassName('showA');
        
        for(i = 0; i < showItems.length; i++){
            
            showItems[i].classList.add('show'); 
            showItems[i].classList.remove('hide');
           
        }
       
            
      }
      if(result === '<%= request.getParameter("result") %>' ){
          
           M.toast({ html: "Item Added to the Cart" });
          
      }
   
      if(resultDel === '<%= request.getParameter("result") %>' ){
          
           M.toast({ html: "Item Removed from the Cart" });
           
      }
      
      
      
    });
   
   
      
    
</script>

<%@ include file="includes/cart.jsp"  %>  


<section id="popular" class="section section-popular scrollspy">
    <div class="container" id="items">
       

            <h4 class="center">Popular <span class="teal-text"><%= request.getParameter("show") %></span></h4>
            <%
               
                
                DataSource source = new DataSource();
                Connection con = source.createConnection();
                PreparedStatement st = con.prepareStatement("select * from item");
    
                ResultSet rs =st.executeQuery();
                int x = 1;
                
                while(rs.next()){
                
                  

            %>
            <div class="row MyCards">
                <div class="col s12 m4 hide showA <%=rs.getString("catName") %>">
                    <div class="card large">
                        <div class="card-image">
                            
                            <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/<%=rs.getString("filename") %>">
                            <p class="card-title"><%=rs.getString("name") %></p>
                        </div>
                        <div class="card-content">
                             
                          
                             <p class="teal-text">About : <span class="right"><span class="black-text"></span> <span class="black-text"><%=rs.getString("descr") %></span></span></p>
                             <p class="teal-text">Price : <span class="right"><span class="black-text"> </span> <span class="black-text"><%=rs.getString("price") %></span></span></p>
                             <p class="teal-text">Stocks Available : <span class="right"><span class="black-text"><%=rs.getString("qty") %></span><span class="black-text"> Units</span></span></p>
                             <p class="teal-text">Cash Return within: <span class="right"><span class="black-text"> 7 </span><span class="black-text">  days</span></span></p>
                             <p class="teal-text">Warrenty : <span class="right"><span class="black-text"> 3 </span><span class="black-text">   Months</span></span></p>
                        </div>
                        <div class="card-action">
                             
                            
                             <a href="addItemToCart?show=<%=rs.getString("catName") %>&item=<%=rs.getString("name") %>&price=<%=rs.getString("price") %>&returnValue=<%= request.getParameter("show") %>" class="btn" style="width:100%;">Add To Cart  <i class="material-icons" style="vertical-align:-6px;">add_shopping_cart</i></a>
                  
                        </div>
                    </div>
                        
                </div>
                        
                    
                        
                <!--fix a small bug n the UI-->       
                <%if(x%3==0){%> 
                <h6 class="dot"></h6>
                <%} %>
             <% 
             
                x++;
               
   
             } %>
                
            </div>
              
            
        </div>
              
    
</section>





<section class="section section-follow teal darken-2 white-text center scrollspy">
    <div class="container">
        <div class="row">

            <div class="col s12">
                <h4>Follow eShop.lk</h4>
                <p>Follow us on social media for </p>
                <a href="#" class="white-text">
                    <i class="fab fa-facebook fa-4x"></i>

                </a>
                <a href="#" class="white-text">
                    <i class="fab fa-twitter fa-4x"></i>

                </a>
                <a href="#" class="white-text">
                    <i class="fab fa-google-plus fa-4x"></i>

                </a>
                <a href="#" class="white-text">
                    <i class="fab fa-pinterest fa-4x"></i>

                </a>
                <a href="#" class="white-text">
                    <i class="fab fa-linkedin fa-4x"></i>

                </a>

            </div>

        </div>

    </div>

</section>

<section id="gallery" class="section section-gallery scrollspy">
    <div class="container">
        <h4 class="center">
            <span class="teal-text">Photo</span>
            Gallery


        </h4>
        <div class="row">
            <div class="col s12 m3">

                <img class="materialboxed responsive-img" width="650" src="image/macro-photography-of-pair-of-black-and-white-nike-running-1124466.jpg">
            </div>
            <div class="col s12 m3">

                <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/photo-of-imac-near-macbook-1029757.jpg" alt="" class="materialboxed responsive-img" width="650" >
            </div>
            <div class="col s12 m3">

                <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/macbook-pro-turned-off-205421.jpg" alt="" class="materialboxed responsive-img" width="650" >
            </div>
            <div class="col s12 m3">

                <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/photo-of-nike-shoes-1598505.jpg" alt="" class="materialboxed responsive-img" width="650" >
            </div>

        </div>
        <div class="row">
            <div class="col s12 m3">

                <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/samsung-samsung-galaxy-s6-edge-plus-edge-plus-s6-edge-47261.jpg" alt="" class="materialboxed responsive-img" width="650" >
            </div>
            <div class="col s12 m3">

                <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/black-dslr-camera-mounted-on-black-tripod-212372.jpg" alt="" class="materialboxed responsive-img" width="650" >
            </div>
            <div class="col s12 m3">

                <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/apple-technology-ipad-computer-38568.jpg" alt="" class="materialboxed responsive-img" width="650" >
            </div>
            <div class="col s12 m3">

                <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/ball-court-design-game-209977.jpg" alt="" class="materialboxed responsive-img" width="650" >
            </div>

        </div>
        <div class="row">
            <div class="col s12 m3">

                <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/tomica-cars-collections-163696.jpg" alt="" class="materialboxed responsive-img" width="650" >
            </div>
            <div class="col s12 m3">

                <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/mobile-phone-samsung-edge-samsung-galaxy-s6-edge-plus-50614.jpg" alt="" class="materialboxed responsive-img" width="650" >
            </div>
            <div class="col s12 m3">

                <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/silver-iphone-x-with-airpods-788946.jpg" alt="" class="materialboxed responsive-img" width="650" >
            </div>
            <div class="col s12 m3">

                <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/chanel-paris-eua-de-parfum-bottle-755992.jpg" alt="" class="materialboxed responsive-img" width="650" >
            </div>

        </div>



    </div>



</section>



<!--JavaScript at end of body for optimized loading-->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
<script type="text/javascript" src="js/removeVal.js"></script>
<script type="text/javascript" src="js/App.js"></script>
<script>
          
    $(document).ready(function(){
    $('.scrollspy').scrollSpy();
    });
       
    
    
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


<%@ include file="includes/footer.jsp"  %> 


</body>
</html>