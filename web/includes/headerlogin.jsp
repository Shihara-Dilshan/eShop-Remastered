<%-- 
    Document   : headerlogin
    Created on : Mar 1, 2020, 3:39:53 PM
    Author     : noobmaster
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="lk.eShop.dao.Item"%>
<%@page import="lk.eShop.dao.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--UNREGISTERED USER'S HEADER-->


<div class="navbar-fixed">
<nav class="teal">
    <div class="nav-wrapper">
      <a href="index.jsp" class="brand-logo"> eShop.lk</a>
      <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
      <ul class="right hide-on-med-and-down">
       
        <li><a href="index.jsp">Home</a></li>
        <li><a href="#search">Search</a></li>
        <li><a href="item.jsp?show=showAll">Products</a></li>
        <li><a href="signup.jsp">My Account</a></li>
        <li><a href="confirmLogout.jsp">logout</a></li>
        <li><a href="#" class="btn-floating teal darken-4 z-depth-0" id="cartIcon">
          <i class="material-icons" id="cartIcon" onclick="aa()">add_shopping_cart</i>
        
        </a></li>
        <li>
            <%
                ArrayList<Item> arrayListForView = new ArrayList<Item>();
                if (request.getServletContext().getAttribute("cartItemList") != null) {
                    arrayListForView = (ArrayList<Item>) request.getServletContext().getAttribute("cartItemList");
                }

                if (!arrayListForView.isEmpty()) {


            %>
        <span class="badge white-text red"> in cart
        
         <%=arrayListForView.size() %>
        </span>
        <% } %>
        </li>
      </ul>
    </div>
  </nav>
</div>
  <ul class="sidenav" id="mobile-demo">
       
         <li><a href="index.jsp">Home</a></li>
        <li><a href="#search">Search</a></li>
        <li><a href="item.jsp?show=showAll">Products</a></li>
        <li><a href="signup.jsp">My Account</a></li>
        <li><a href="confirmLogout.jsp">logout</a></li>
        <li><a href="mobileCart.jsp" class="btn-floating white darken-4 z-depth-0" id="cartIcon">
          <i class="material-icons" id="cartIcon" onclick="aa()">add_shopping_cart</i>
        
        </a></li>
        
        <li>
        
        <span class="badge white-text red">5 items in cart
        
        </span>
        </li>
  </ul>

  

	
