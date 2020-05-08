<%-- 
    Document   : userpRrofile
    Created on : Apr 25, 2020, 7:41:01 AM
    Author     : noobmaster
--%>

<%@page import="lk.eShop.dao.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

    <head>
        <title>User Profile</title>
        <link href="css/eShop.css" rel="stylesheet"> 
        <link href="css/fontawesome-free-5.12.1-web/css/all.css" rel="stylesheet"> <!--load all styles -->
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script>
            
            var result = "updated";
            var result2 = "pasfailed";
            var result3 = "updatefailed";
            var result4 = "cardFailed";
           
            document.addEventListener("DOMContentLoaded" , function(){
                
                if(result === '<%= request.getParameter("result")%>' ){
          
                        M.toast({ html: "Profile Successfully Updated" });
          
                }else if(result2 === '<%= request.getParameter("result")%>' ){
          
                        M.toast({ html: "Unsuccessfull Your Old password is incorrect" });
          
                }else if(result3 === '<%= request.getParameter("result")%>' ){
          
                        M.toast({ html: "Unsuccessfull! Something went wrong!" });
          
                }else if(result4 === '<%= request.getParameter("result")%>' ){
          
                        M.toast({ html: "Unsuccessfull! Check your card details!" });
          
                }
   
                
            });
             
           
        </script>

        
        
        
        <style>
    
            body {
        
                background-image: url(https://raw.githubusercontent.com/Shihara-Dilshan/img/master/bgtg.jpg);
            
            }

        </style>  
        
    </head>
    


    <body id="Home" class="scrollspy test">
        <%
            if (session.getAttribute("useremail") == null) {

        %>        

        <%@ include file="includes\headerNormal.jsp"  %>  

        <% } else { %> 

        <%@ include file="includes\headerlogin.jsp"  %>  


        <% }%> 

        <%@ include file="includes/cart.jsp"  %>  



       
            <div class="container">
                <%
                        String UEmail = (String)session.getAttribute("useremail");
                    
                        DataSource source = new DataSource();
                        Connection con = source.createConnection();
                        PreparedStatement st = con.prepareStatement("select * from user where name = ?");
                        st.setString(1, UEmail);
                        ResultSet rs =st.executeQuery();
                        
                         String Uname = "";
                         String Lname = "";
                         String Email = "";
                         String Country = "";
                         String Address = "";
                        
                         
                         while (rs.next()) {

                               Uname = rs.getString("fname");
                               Lname = rs.getString("lname");
                               Email = rs.getString("name");
                               Country = rs.getString("country");
                               Address = rs.getString("address");
                              
                         }
                        
                         
                
                  

                    %>
                <div class="card-panel z-depth-3 grey lighten-5" style="border-style: solid; border-color: teal; border-radius: 5px;">
                    <div class="row">
                        <div class="col s12">
                            <div class="card-title center teal-text">
                                <h4>My Profile <i class="material-icons medium" style="vertical-align: -15px;">account_circle</i><a href="purchuseHistory.jsp"><i class="material-icons right black-text medium">child_friendly</i></a></h4>
                                <a href="updateUserBasics.jsp?show=showAll&email=<%= Email %>&fname=<%= Uname %>&lname=<%= Lname %>&addres=<%= Address %>"><button class="btn red" style="width: 100%; vertical-align:-18px;"> to edit your profile , click here</button></a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col s12">
                           
                                <div class="input-field col s12 m6">
                                    <input  id="first_name" type="text" name="first_name" value="<%= Uname %>">
                                    <label for="first_name">Last Name</label>
                                    
                                </div>
                                <div class="input-field col s12 m6">
                                    <input id="last_name" type="text" name="last_name" value="<%= Lname %>">
                                    <label for="last_name">Last Name</label>
                                </div>
                          
                                <div class="input-field col s12">
                                    <input id="email" type="email" name="email" value="<%= Email %>">
                                    <label for="email">Email</label>
                                </div>
                           

                           
                                <div class="input-field col s8 m6">
                                    <input id="password" type="password" name="password" disabled="" value="<%= Email %>">
                                    <label for="password">Password</label>
                                </div>
                                <div class="input-field col s4 m6">
                                    <a href="changePassword.jsp?show=showAll&email=<%= Email %>"><button class="btn" style="width: 100%; vertical-align:-18px;">edit <i class="material-icons" style="vertical-align: -4px;">edit</i></button></a>
                                </div>
                            

                            
                            <div class="input-field col s12">
                                    <input id="email" type="email" name="email" value="<%= Country %>">
                                    <label for="email">Country</label>
                            </div>


                            <div class="input-field col s12">
                                <textarea id="textarea" class="materialize-textarea" name="address"><%= Address %></textarea>
                                <label for="address">Address</label>
                            </div>
                            <div class="input-field col s6 m6">
                                <input  id="credit_card" type="password" name="credit_card" value="fakevaluesforcard" disabled="">
                                    <label for="credit_card">Credit Card</label>
                            </div>
                            <div class="input-field col s2 m2">
                                <input  id="credit_cardPin" type="password" name="credit_cardPin" value="fake" disabled="">
                                    <label for="credit_cardPin">Credit Card</label>
                            </div>
                            <div class="input-field col s4 m4">
                                <a href="editCreditCard.jsp"><button class="btn" style="width: 100%; vertical-align:-18px;">edit <i class="material-icons" style="vertical-align: -4px;">edit</i></button></a>
                            </div>

                           
                           
                        </div>
                    </div>
                </div>

            </div>
       
        <!--Java script at end of body for optimized loading-->
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script type="text/javascript" src="js/App.js"></script>

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



        <%@ include file="includes\footer.jsp"  %> 


    </body>
</html>
