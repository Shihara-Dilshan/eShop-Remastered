package lk.eShop;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.Item;
import lk.eShop.dao.ItemDaoImplement;


@WebServlet(name = "DeleteItem", urlPatterns = {"/DeleteItem"})
public class DeleteItem extends HttpServlet {

    Item editItem = new Item();
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        ItemDaoImplement sdaoDeleteItem = new ItemDaoImplement();
         
        editItem.setItemName(request.getParameter("itemname"));
        
        
        if(sdaoDeleteItem.DeleteItem(editItem)){
             
            response.sendRedirect("adminindex.jsp?result=ItemDelected");
            
            
        }
        else{
            response.sendRedirect("errorPage.jsp");
        }
         
        
    }
        
        
    
}
