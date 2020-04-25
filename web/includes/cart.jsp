<%-- 
    Document   : cart
    Created on : Apr 19, 2020, 5:00:30 AM
    Author     : noobmaster
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="lk.eShop.dao.Item"%>
   
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



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    
        body {
        
            background-image: url(https://raw.githubusercontent.com/Shihara-Dilshan/img/master/bgtg.jpg);
            
        }

</style>  
<section id="cartSection">
    <div id="cart" class="hideCart test">
        <div>
          
                <div class="col s4">
                    <div class="card">
                        <div class="card-image">




                        </div>
                        <div class="card-content">
                            <div class="col s12 center-align">

                                <h5><i class="material-icons teal-text">add_shopping_cart</i> My<span class="teal-text">Cart
                                    </span>
                                    <button class="btn red right disabled" id="TotlPrice"> </button>
                                </h5>
                            </div>
                            <hr>
                            <table class="striped highlight centered responsive-table">
                                <thead>
                                    <tr>
                                        <th class="left">Item</th>
                                        <th>price</th>
                                       
                                        <th>Acton</th> 
                                    </tr>
                                </thead>

                                <tbody id="book-list">
                            <%
                                ArrayList<Item> arrayList = new ArrayList<Item>();
                                if (request.getServletContext().getAttribute("cartItemList") != null) {
                                    arrayList = (ArrayList<Item>)request.getServletContext().getAttribute("cartItemList");
                                }
                                
                                if(!arrayList.isEmpty()){
                                
                                      for(Item item : arrayList){
                                
                               
                                          
                            %>
                                <tr>
                                    <td class="left"><%=item.getItemName() %></td>
                                    <td class="price"><%=item.getItemPrice() %></td>
                                    
                                    <td> <a href="removeFromCart?itemName=<%=item.getId() %>&show=<%= request.getParameter("show") %>"><i class="material-icons">delete</i></a></td>
                                </tr>    
                            
                           
                            
                            
                           <%
                           
                                      }
                                      
                                }
                           
                           %>
                            </tbody>
                            </table>

                           

                            <div style="display: table;padding-top: 20px;" class="teal-text">

                                <div id="total">
                                    <h5 style="display: table-cell; " id="displayPrice"></h5>
                                </div>
                            </div>
                            <div style="text-align: center;padding-top: 20px;">
                                <a href="purchusePage.jsp?show=showAll"><button class="btn waves-effect waves-light" type="submit" name="action">Check Out
                                    <i class="material-icons right">add_shopping_cart</i>
                                </button>
                                </a>

                            </div>

                        </div>


                    </div>

          
        </div>



</section>