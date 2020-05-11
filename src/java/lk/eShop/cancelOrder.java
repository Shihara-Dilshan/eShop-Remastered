package lk.eShop;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.ItemDaoImplement;


@WebServlet(name = "cancelOrder", urlPatterns = {"/cancelOrder"})
public class cancelOrder extends HttpServlet {

    private String CancelItemId;
    ItemDaoImplement cancelOrderDao = new ItemDaoImplement();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        this.CancelItemId = request.getParameter("id");
        
        if(cancelOrderDao.CancelOrder(CancelItemId)){
            
            
            response.sendRedirect("purchuseHistory.jsp?result=Cancelled");
            
            
        }
        else{
            response.sendRedirect("purchuseHistory.jsp?result=failed");
        }
        
        
    }
}
