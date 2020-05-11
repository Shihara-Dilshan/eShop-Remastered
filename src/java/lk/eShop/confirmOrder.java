package lk.eShop;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.ItemDaoImplement;


@WebServlet(name = "confirmOrder", urlPatterns = {"/confirmOrder"})
public class confirmOrder extends HttpServlet {

    private String itemId;
    ItemDaoImplement confirmOrderDao = new ItemDaoImplement();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
       this.itemId = request.getParameter("id");
       
       if(confirmOrderDao.ConfirmOrder(itemId)){
            
            
            response.sendRedirect("ManageOrders.jsp?result=delivered");
            
            
        }
        else{
            response.sendRedirect("ManageOrders.jsp?result=failed");
        }
        
    }
}
