<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="lk.eShop.dao.DataSource"%>
<!DOCTYPE html>
<html>
<head>
<title>Index</title>      
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
 <script>
            
            var resulSignUp = "Registed";
            var resultBuy = "buyTrue";
            
            document.addEventListener("DOMContentLoaded" , function(){
                
                if(resulSignUp === '<%= request.getParameter("result")%>' ){
          
                        M.toast({ html: "Successfully registerd!" });
          
                }else if(resultBuy === '<%= request.getParameter("result")%>' ){
          
                        M.toast({ html: "Successfull. Your Items Will be delivered soon!" });
          
                }
   
                
            });
             
           
 </script>



</head>
<body id="Home" class="scrollspy test" >
  
<%@ include file="includes/Navbar.jsp"  %>  
<%@ include file="includes/cart.jsp"  %>  

<div class="slider" style="z-index: -1">
    <ul class="slides">
        <li>
            <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/erik-mclean-nfoRa6NHTbU-unsplash.jpg"> <!-- random image -->
            <div class="caption center-align">
                <h3>Fashion With a leap</h3>
                <h5 class="light grey-text text-lighten-3"> Up to 50% Discounts on your cloths</h5>
            </div>
        </li>
        <li>
            <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/brooke-cagle-WHWYBmtn3_0-unsplash.jpg"> <!-- random image -->
            <div class="caption left-align">
                <h3>24/7 Service available</h3>
                <h5 class="light grey-text text-lighten-3">Shop anytime anywhere</h5>
            </div>
        </li>
        <li>
            <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/sahin-yesilyaprak-9eGMyzOSyYE-unsplash.jpg"> <!-- random image -->
            <div class="caption left-align">
                <h3>All about your choice</h3>
                <h5 class="light grey-text text-lighten-3">100000+ items. 300+ manufactures </h5>
            </div>
        </li>
        <li>
            <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/fashion-fashionable-footwear-leather-267301.jpg"> <!-- random image -->
            <div class="caption left-align">
                <h3>Fast delivery</h3>
                <h5 class="light grey-text text-lighten-3">Shop.lk provides fast and secure delivery service</h5>
            </div>
        </li>
       
    </ul>
     <div id="search" class="scrollspy"> </div>
</div >

        


<section id="search" class="scrollspy">
    <div id="search" class="section section-search teal darken-1 white-text center">
        <div class="row">
            <div class="col s12">
                <h4>Search Here</h4>
                <div class="input-field">
                    <form action="item.jsp" method="get">

                        <input name="show" type="text" class="white grey-text autocomplete" id="autocomplete-input" placeholder="Rooms , Other products, ect...">
                        
                       
        
                    </form>

                </div>

            </div>

        </div>

    </div>
</section>



<section id="popular" class="section section-popular scrollspy">
    <div class="container">
       

            <h4 class="center"><span class="teal-text">Popular</span> Categories</h4>
            <%
                DataSource source = new DataSource();
                Connection con = source.createConnection();
                PreparedStatement st = con.prepareStatement("select * from category");
    
                ResultSet rs =st.executeQuery();
                int x = 1;
                while(rs.next()){
                
                  

            %>
            
<%
                        

        String UEmail = (String)session.getAttribute("useremail");
                    
      
        PreparedStatement st2 = con.prepareStatement("select * from user where name = ?");
        st2.setString(1, UEmail);
        ResultSet rs2 =st2.executeQuery();
                        
       
        int uID = 0;
                         
        while (rs2.next()) {

           
            uID = rs2.getInt("id");
                               
            session.setAttribute("userID", uID);
                         
        
        }
                        
                         
                
                  

%>
            <div class="row">
                <div class="col s12 m4">
                    <div class="card">
                        <div class="card-image">
                            
                            <img src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/<%=rs.getString("CfileName") %>">
                            <span class="card-title"><%=rs.getString("Cname") %></span>
                        </div>
                        <div class="card-content">
                            <p><%=rs.getString("CDescription") %></p>
                        </div>
                        <div class="card-action">
                           
                             <a href="item.jsp?show=<%=rs.getString("Cname") %>" class="btn" style="width:100%;">Explore</a>
                  
                        </div>
                    </div>
                        
                </div>
                <%if(x%3==0){%> 
                <h6>.</h6>
                <%} %>
             <% 
             
                x++;
               
   
             } %>
                
            </div>
              
            
        </div>
              
    
</section>



<section class="section section-icons grey lighten-4 center scrollspy">
    <div class="container">
        <div class="row">

            <div class="col s12 m4">
                <div class="card-panel">
                    <i class="material-icons large teal-text">commute</i>
                    <h4>Island wide delivery</h4>
                    <p> Your item will be delivered within 5 days</p>
                </div>

            </div>
            <div class="col s12 m4">
                <div class="card-panel">
                    <i class="material-icons large teal-text">store</i>
                    <h4>To your Door step</h4>
                    <p> We delivery to your door step </p>

                </div>

            </div>
            <div class="col s12 m4">
                <div class="card-panel">
                    <i class="material-icons large teal-text">airplanemode_active</i>
                    <h4>Over seas delivery</h4>
                    <p>We deliver some countries. <span class="span teal-text"> <a href="#">Check here</a></span></p>

                </div>

            </div>


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

                <img class="materialboxed responsive-img" width="650" src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/apple-apple-devices-blur-cellphone-269323.jpg">
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

<section id="contact" class="section section-contact scrollspy">
    <div class="container">
        <div class="row">
            <div class="col s12 m6">
                <div class="card-panel teal white-text center">

                    <i class="material-icons">email</i>
                    <h5>Any matters with our products</h5>


                </div>   
                <ul class="collection with-header">
                    <li class="collection-header"><h4>Head Office</h4></li>
                    <li class="collection-item">eShop.lk</li>
                    <li class="collection-item">55/F Alapalavala</li>
                    <li class="collection-item">Handessa </li>
                </ul>
            </div>
            <div class="col s12 m6">
                <h5>Please Fill out this from</h5>  
                <div class="input-field">
                    <input type="text" placeholder="name" id="name">

                </div>
                <div class="input-field">
                    <input type="text" placeholder="email" id="email">

                </div>
                <div class="input-field">
                    <input type="text" placeholder="mobile" id="mobile">

                </div>
                <div class="input-field">
                    <textarea placeholder="massage" id="massage" class="materialize-textarea"></textarea>
                    <input type="submit" value="submit" class="btn" style="width:100%;">
                </div>


            </div>

        </div>


    </div>


</section>


<!--JavaScript at end of body for optimized loading-->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
<script type="text/javascript" src="js/removeVal.js"></script>
<script type="text/javascript" src="js/App.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
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
          
    $(document).ready(function(){
    $('input.autocomplete').autocomplete({
          data: {
                 "Shoes": null,
                 "Laptops": null,
                 "Mobile Phones": null,
                 "Desktops": null,
                 "Adiddas": null,
                 "Toys": null,
                 "Ebooks": null,
                 "Sports Items": null,
                 "iphone": "Mobile Phones",
                 "Paintings": null,
                 "Samsung": null,
                 "Apple": null,
                 "LG": null,
                 "Huwaei": null,
                 "Television": null,
                 "Fasion": null,
                 "Perfumes": null,
                 "Clothes": null,
                 "Rings": 'https://placehold.it/250x250'
    },
    });
    });
         
          
</script>


<%@ include file="includes/footer.jsp"  %> 
</body>
</html>
