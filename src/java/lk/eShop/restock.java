package lk.eShop;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.ItemDaoImplement;


@WebServlet(name = "restock", urlPatterns = {"/restock"})
public class restock extends HttpServlet {

    private String restockItemId;
    ItemDaoImplement restockOrderDao = new ItemDaoImplement();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        this.restockItemId = request.getParameter("id");
        
        if(restockOrderDao.restockItem(restockItemId)){
            
            
            response.sendRedirect("cancelledOrders.jsp?result=restocked");
            
            
        }
        else{
            response.sendRedirect("cancelledOrders.jsp?result=failed");
        }
        
        
    }
}
