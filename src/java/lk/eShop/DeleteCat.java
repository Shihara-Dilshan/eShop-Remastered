package lk.eShop;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.Category;
import lk.eShop.dao.ItemDaoImplement;


@WebServlet(name = "DeleteCat", urlPatterns = {"/DeleteCat"})
public class DeleteCat extends HttpServlet {

    Category DeleteCategory = new Category();
    ItemDaoImplement sdaoDelete = new ItemDaoImplement();
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
         
        DeleteCategory.setCategoryName(request.getParameter("catname"));
        
        if(sdaoDelete.DeleteCategory(DeleteCategory)){
            
            response.sendRedirect("adminindex.jsp?result=CatDelected");
            
            
        }
        else{
            
            response.sendRedirect("login.jsp");
            
        }
         
        
    }
}
