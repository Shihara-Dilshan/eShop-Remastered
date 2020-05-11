package lk.eShop;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import lk.eShop.dao.Item;
import lk.eShop.dao.ItemDaoImplement;


@WebServlet(name = "addItem", urlPatterns = {"/addItem"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2 ,
                 maxFileSize = 1024 * 1024 * 10,
                 maxRequestSize = 1024 * 1024 * 50)
public class addItem extends HttpServlet {
    
    Item newItem = new Item();
    ItemDaoImplement addItemdao = new ItemDaoImplement();
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
         
        newItem.setItemName(request.getParameter("iname"));
        newItem.setItemPrice(request.getParameter("iprice"));
        newItem.setItemDesc(request.getParameter("itemDesc"));
        newItem.setItemCatName(request.getParameter("Icategory"));
        newItem.setItemQuantity(request.getParameter("qty"));
        Part part = request.getPart("Iimage"); 
        newItem.setFileName(getFileName(part));
        
        
        
        if(addItemdao.Additem(newItem)){
            
            
            response.sendRedirect("adminindex.jsp?result=addedItem");
            
            
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
