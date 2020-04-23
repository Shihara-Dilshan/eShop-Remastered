package lk.eShop;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.ItemDaoImplement;


@WebServlet(name = "DeleteItem", urlPatterns = {"/DeleteItem"})
public class DeleteItem extends HttpServlet {

    private String Iname;
    
    public void setIname(String Iname) {
        this.Iname = Iname;
    }
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        ItemDaoImplement sdaoDeleteItem = new ItemDaoImplement();
         
        
        
        this.setIname(request.getParameter("itemname"));
        
       
        
        if(sdaoDeleteItem.DeleteItem(Iname)){
            
            //HttpSession session = request.getSession();
            //session.setAttribute("additem", "yes");
            
            
            response.sendRedirect("adminindex.jsp");
            
            
        }
        else{
            response.sendRedirect("login.jsp");
        }
         
        
    }
        
        
    
}
