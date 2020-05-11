package lk.eShop;

import java.io.IOException;
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
    ItemDaoImplement sdaoDeleteItem = new ItemDaoImplement();
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        editItem.setItemName(request.getParameter("itemname"));
        
        
        if(sdaoDeleteItem.DeleteItem(editItem)){
             
            response.sendRedirect("adminindex.jsp?result=ItemDelected");
            
            
        }
        else{
            
            response.sendRedirect("errorPage.jsp");
            
        }
         
        
    }
        
        
    
}
