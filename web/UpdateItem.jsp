                                                                                                                                                           <%-- 
    Document   : UpdateItem
    Created on : Apr 21, 2020, 5:36:18 PM
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
        <title>Update Item</title>
        <link href="css/eShop.css" rel="stylesheet"> 
        <link href="css/fontawesome-free-5.12.1-web/css/all.css" rel="stylesheet"> <!--load all styles -->
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
         <script>
            document.addEventListener("DOMContentLoaded" , function(){
                
              var oldNmae =  document.getElementById('oldN');
              oldNmae.style.display = "none";
                
            });
        
        
        </script>

    </head>




    <body id="Home" class="scrollspy test" background="image/gray-and-black-hive-printed-textile-691710.jpg">
        <!--UNREGISTERED USER'S HEADER-->







        <%@ include file="includes\adminheaderNormal.jsp"  %>  



        <form action="UpdateItem" method="post" enctype="multipart/form-data">  
            <div class="container" id="myForm" >

                <div class="card-panel z-depth-3">
                    <div class="row">
                        <div class="col s12">
                            <div class="card-title center-align teal-text">
                                <h5><i class="material-icons teal-text">assessment</i> Update <span class="teal-text">Item
                                    </span>

                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="oldN">
                        <div class="input-field col s12">
                            
                            <input type="text" value="<%=request.getParameter("name") %>" name="Oldbname">
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="name" type="text" class="validate" name="iname">
                            <label for="name"><%=request.getParameter("name") %></label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col s12">
                            <input id="names" type="text" name="iprice">
                            <label for="iprice"><%=request.getParameter("price") %></label>
                        </div>
                    </div>



                    <div class="row">
                        <div class="input-field col s12">
                            <textarea id="textarea" class="materialize-textarea" name="itemDesc"></textarea>
                            <label for="itemDesc"><%=request.getParameter("desc") %></label>
                        </div>
                    </div>
                    <!--div class="row">
                        <div class="input-field col s12">
                            <input id="names" type="text" name="Icategory">
                            <label for="Icategory"><%=request.getParameter("catName") %></label>
                        </div>
                    </div-->
                    <div class="row">
                        <div class="input-field col s12">
                            <select style="font-size: 10px;" name="Icategory">
                                <option value="" disabled selected>Choose Category</option>
                                <%
               
                
                                DataSource source = new DataSource();
                                Connection con = source.createConnection();
                                PreparedStatement stp = con.prepareStatement("select Cname from category");
    
                                ResultSet rs =stp.executeQuery();
                                int x = 1;
                
                                while(rs.next()){
                
                  

                                %>
                                <option value="<%=rs.getString("Cname") %>"><%=rs.getString("Cname") %></option>
                                <% 
                
                                 }
                                %>
                            </select>
              
                        </div>
                    </div>       
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="names" type="text" name="qty">
                            <label for="qty"><%=request.getParameter("qty") %> </label>
                        </div>
                    </div>    
                    <br>
                    <div class="row">
                        <div class="input-feild col s12 ">  
                            
                            <input type="file" name="Iimage"  ><br><br>
                                <label for="bimage">Current image name is <%=request.getParameter("image") %></label>
                                <br><br>
                                <img style="width:100%; height: auto;" src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/<%=request.getParameter("image") %>">
                                    

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
        $(document).ready(function () {
            $('.sidenav').sidenav();

        });

        $(document).ready(function () {
            $('.slider').slider({indicators: false, height: 350, transition: 500, interval: 6000});
        });

        $(document).ready(function () {
            $('.materialboxed').materialbox();
        });
        $(document).ready(function () {
                $('select').formSelect();
        });
         


    </script>


    <%@ include file="includes\adminfooter.jsp"  %> 
</body>
</html>