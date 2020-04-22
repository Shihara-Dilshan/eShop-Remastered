<%-- 
    Document   : RegisteredAlert
    Created on : Apr 17, 2020, 9:24:27 AM
    Author     : noobmaster
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%
    
    if (session.getAttribute("regsuccess")==("yes"))
    {   
        
    %>
     
    <script type="text/javascript">
     
        var alerted = localStorage.getItem('alerted') || '';
        if (alerted != 'yes') {
        alert("Successfully registered");
        localStorage.setItem('alerted','yes');
    
    }
    
    </script>
    
    <%
 
    }else{
 
    %>
    <script type="text/javascript">
               
    </script>
    
    <%  
    }
    
    %>

        
    <%
        if(session.getAttribute("useremail") == null){
            
    %>        
    
     <%@ include file="headerNormal.jsp"  %>  
            
    <% }else{ %> 
    
     <%@ include file="headerlogin.jsp"  %>  
   
    
    <% } %> 
   
