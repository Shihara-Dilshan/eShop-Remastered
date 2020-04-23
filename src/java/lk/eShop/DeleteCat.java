package lk.eShop;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import lk.eShop.dao.ItemDaoImplement;


@WebServlet(name = "DeleteCat", urlPatterns = {"/DeleteCat"})
public class DeleteCat extends HttpServlet {

    private String Cname;
    
    public void setCname(String Cname) {
        this.Cname = Cname;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
         
        ItemDaoImplement sdaoDelete = new ItemDaoImplement();
         
        
        
        this.setCname(request.getParameter("catname"));
        
       
        
        if(sdaoDelete.DeleteCategory(Cname)){
            
            //HttpSession session = request.getSession();
            //session.setAttribute("additem", "yes");
            
            
            response.sendRedirect("adminindex.jsp");
            
            
        }
        else{
            response.sendRedirect("login.jsp");
        }
         
        
    }
}
