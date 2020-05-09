package lk.eShop;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import lk.eShop.dao.Category;
import lk.eShop.dao.ItemDaoImplement;


@WebServlet(name = "addCategory", urlPatterns = {"/addCategory"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2 ,
                 maxFileSize = 1024 * 1024 * 10,
                 maxRequestSize = 1024 * 1024 * 50)
public class addCategory extends HttpServlet {

    Category newCategory = new Category();
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        ItemDaoImplement addCat = new ItemDaoImplement();
         
        newCategory.setCategoryName(request.getParameter("bname"));
        newCategory.setCategoryDescription(request.getParameter("bmanufast"));
        Part part = request.getPart("bimage"); 
        newCategory.setFileName(getFileName(part));
        
        
        if(addCat.AddCategory(newCategory)){
            
           
            response.sendRedirect("adminindex.jsp?result=addedCat");
            
            
        }
        else{
            response.sendRedirect("login.jsp");
        }
         
        
    }

   
    private String getFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        System.out.println("content-disposition header= "+contentDisp);
        String[] tokens = contentDisp.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf("=") + 2, token.length()-1);
            }
        }
        return "";
    }
}
