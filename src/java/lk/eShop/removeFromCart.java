package lk.eShop;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.Item;

@WebServlet(name = "removeFromCart", urlPatterns = {"/removeFromCart"})
public class removeFromCart extends HttpServlet {

    private String RemoveItem;
    private int RemoveIId;

    public void setRemoveItem(String RemoveItem) {
        this.RemoveItem = RemoveItem;
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException , IndexOutOfBoundsException {
        
            
            this.setRemoveItem(request.getParameter("itemName"));
            
            try{
            
                this.RemoveIId = Integer.parseInt(RemoveItem);
    
            }catch(NumberFormatException e){
            
                e.printStackTrace();
                
            }
            
            
            ArrayList<Item> RemoveArrayList = new ArrayList<Item>();
            
            
            if(request.getServletContext().getAttribute("cartItemList") != null){
            
                RemoveArrayList = (ArrayList<Item>) request.getServletContext().getAttribute("cartItemList");
                RemoveArrayList.remove(this.RemoveIId);
                
                
            }else{
            
                
                
            }
          
            RequestDispatcher rd1 = getServletContext().getRequestDispatcher("/item.jsp?show="+request.getParameter("show")+"&result=delected");
            rd1.forward(request, response);
            
            
       
 
        
        
    
    }
}
