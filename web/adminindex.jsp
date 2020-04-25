<%-- 
    Document   : adminindex
    Created on : Mar 7, 2020, 6:41:02 PM
    Author     : noobmaster
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="lk.eShop.dao.DataSource"%>
<%
    if (session.getAttribute("adminemail") == null) {

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
        <script>
            
            var resulItem = "addedItem";
            var resulCat = "addedCat";
            var resultItemDelect = "ItemDelected";
            var resultCatDelect = "CatDelected";
            
            document.addEventListener("DOMContentLoaded" , function(){
                
                if(resulItem === '<%= request.getParameter("result")%>' ){
          
                        M.toast({ html: "Successfully Added the Item" });
          
                }else if(resulCat === '<%= request.getParameter("result")%>' ){
          
                        M.toast({ html: "Successfully Added the Category" });
          
                }else if(resultItemDelect === '<%= request.getParameter("result")%>' ){
          
                        M.toast({ html: "Successfully Delected the Item" });
          
                }else if(resultCatDelect === '<%= request.getParameter("result")%>' ){
          
                        M.toast({ html: "Successfully Delected the Category" });
          
                }  
   
                
            });
             
           
        </script>

    </head>




    <body id="Home" class="scrollspy test" background="image/gray-and-black-hive-printed-textile-691710.jpg">
        <!--UNREGISTERED USER'S HEADER-->

        <%
               
                
                DataSource source = new DataSource();
                Connection con = source.createConnection();
                PreparedStatement cateountSt = con.prepareStatement("select * from category");
                PreparedStatement ItemCountSt = con.prepareStatement("select * from item");
                
                ResultSet rs =cateountSt.executeQuery();
                ResultSet rs2 =ItemCountSt.executeQuery();
                
                int CatCount = 0;
                int ItemCount = 0;
                
                while(rs.next()){
                
                    CatCount++;
                }
                while(rs2.next()){
                
                    ItemCount++;
                }
                  

        %>





        <%@ include file="includes\adminheaderNormal.jsp"  %>  



        <section class="section section-icons transparent lighten-4 center">
            <div class="container">
                <div class="row">

                    <div class="col s12 m4">
                        <div class="card-panel card medium">
                            <i class="material-icons large teal-text">chrome_reader_mode</i>
                            <h4>Catogories </h4>
                            <p> Your item will be delivered </p>

                            <div class="card-content teal-text"> 

                                <h4><%= CatCount %></h4>
                                <a href="ManageCategory.jsp"><button class="btn"> View / Manage  </button></a>
                            </div>



                        </div>



                    </div>
                    <div class="col s12 m4">
                        <div class="card-panel card medium">
                            <i class="material-icons large teal-text">assessment</i>
                            <h4>Products listed</h4>
                            <p> We delivery to your door step </p>
                            <div class="card-content teal-text"> 

                                <h4><%= ItemCount %></h4>
                                <a href="ManageItem.jsp"><button class="btn"> View / Manage  </button></a>
                            </div>
                        </div>

                    </div>
                    <div class="col s12 m4">
                        <div class="card-panel card medium">
                            <i class="material-icons large teal-text">assignment_ind</i>
                            <h4>Registered users</h4>
                            <p>We deliver some countries. </p>
                            <div class="card-content teal-text"> 

                                <h4>25</h4>
                                <a href="ManageItem.jsp"><button class="btn"> View   </button></a>
                            </div>
                        </div>


                    </div>


                </div>

            </div>


        </section>
        <section class="section section-icons transparent lighten-4 center">
            <div class="container">
                <div class="row">

                    <div class="col s12 m4">
                        <div class="card-panel card medium">
                            <i class="material-icons large teal-text">touch_app</i>
                            <h4>Total orders</h4>
                            <p> Your item will be delivered within 5 </p>
                            <div class="card-content teal-text"> 

                                <h4>25</h4>
                            </div>

                        </div>

                    </div>
                    <div class="col s12 m4">
                        <div class="card-panel card medium">
                            <i class="material-icons large teal-text">not_interested</i>
                            <h4>Cancelled </h4>
                            <p> We delivery to your door step </p>
                            <div class="card-content teal-text" > 

                                <h4 >25</h4>
                            </div>
                        </div>

                    </div>
                    <div class="col s12 m4">
                        <div class="card-panel card medium">
                            <i class="material-icons large teal-text">phone</i>
                            <h4>User Requests</h4>
                            <p>We deliver some countries.</p>
                            <div class="card-content teal-text"> 

                                <h4>25</h4>
                            </div>
                        </div>


                    </div>


                </div>

            </div>


        </section>






        <!--JavaScript at end of body for optimized loading-->
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script type="text/javascript" src="js/removeVal.js"></script>
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


        </script>


        <%@ include file="includes\adminfooter.jsp"  %> 
    </body>
</html>