<%-- 
    Document   : ManageCategory
    Created on : Apr 21, 2020, 5:26:41 AM
    Author     : noobmaster
--%>

        
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page import="lk.eShop.dao.DataSource"%>
<%@page import="lk.eShop.dao.DataSource"%>
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
      <style>
    
        #myContaner {
        
            background-image: url(https://raw.githubusercontent.com/Shihara-Dilshan/img/master/bgtg.jpg);
            
        }

      </style>
      <script>
            
            var resulupdate = "updated";
           
            
            document.addEventListener("DOMContentLoaded" , function(){
                
                if(resulupdate === '<%= request.getParameter("result")%>' ){
          
                        M.toast({ html: "Category Successfully updated" });
          
                }
   
                
            });
             
           
    </script>
      
    </head>
    
    
    

    <body id="Home" class="scrollspy test">
   <!--UNREGISTERED USER'S HEADER-->

    

   
   
    
   
     <%@ include file="includes\adminheaderNormal.jsp"  %>  
            
  

     <section id="cartSection">
         <div class="contassiner">     
             <div class="test white">
                 <div>
                     
                         <div class="col s4">
                             <div class="card" id="myContaner">
                                 <div class="card-image" >




                                 </div>
                                 <div class="card-content">
                                     <div class="col s12 center-align">

                                         <h5><i class="material-icons teal-text">chrome_reader_mode</i> Listed<span class="teal-text">Categories
                                             </span>
                                              <a href="AddCat.jsp"><button class="btn right"><i class="material-icons white-text" style="vertical-align:-3px;">add</i> New </button></a>
                                         </h5>
                                     </div>
                                     <hr>
                                     <table class="striped highlight centered transparent">
                                         <thead>
                                             <tr>
                                                 <th class="left">Category</th>
                                                 <th>Description</th>
                                                 <th>Image</th>   
                                                 <th>Action</th> 
                                             </tr>
                                         </thead>

                                         <tbody id="book-list">
                                          
                                             <%  
                                                
                                                 DataSource AdminDBsource = new DataSource();
                                                 Connection con = AdminDBsource.createConnection();
                                                 PreparedStatement st = con.prepareStatement("select * from category");

                                                 ResultSet rs = st.executeQuery();
                                                 int x = 1;
                                                 while (rs.next()) {


                                             %>
                                             
                                             
                                             <tr>
                                                 <td class="left"><%=rs.getString("Cname") %></td>
                                                 <td class="price"><%=rs.getString("CDescription") %></td>
                                                 <td ><img style="width:60px; height: 60px; border-radius: 50%;" src="https://raw.githubusercontent.com/Shihara-Dilshan/img/master/<%=rs.getString("CfileName") %>"></td>
                                                 <td> 
                                                     <a href="UpdateCategory.jsp?catName=<%=rs.getString("Cname") %>&Des=<%=rs.getString("CDescription") %>&image=<%=rs.getString("CfileName") %>" >
                                                         <i class="material-icons">edit
                                                         </i>
                                                     </a>
                                                     <a href="warningCategory.jsp?catName=<%=rs.getString("Cname") %>">
                                                         <i class="material-icons">delete</i>
                                                     </a></td>
                                             </tr>    


                                             <%
                                             
                                                 }
                                             
                                             %>

                                         </tbody>
                                     </table>




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