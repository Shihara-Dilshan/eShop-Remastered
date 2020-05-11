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


@WebServlet(name = "UpdateItem", urlPatterns = {"/UpdateItem"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2 ,
                 maxFileSize = 1024 * 1024 * 10,
                 maxRequestSize = 1024 * 1024 * 50)
public class UpdateItem extends HttpServlet {

    Item updateItem = new Item();
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
      ItemDaoImplement sdaoIupdateI = new ItemDaoImplement();
         
        updateItem.setItemName(request.getParameter("iname"));
        updateItem.setItemPrice(request.getParameter("iprice"));
        updateItem.setItemDesc(request.getParameter("itemDesc"));
        updateItem.setItemCatName(request.getParameter("Icategory"));
        updateItem.setItemQuantity(request.getParameter("qty"));
        updateItem.setOldItemName(request.getParameter("Oldbname"));
        Part part = request.getPart("Iimage"); 
        updateItem.setFileName(getFileName(part));
       
        
        
        if(sdaoIupdateI.UpdateItem(updateItem)){
            
            
            response.sendRedirect("ManageItem.jsp?result=updated");
            
            
        }
        else{
            
            response.sendRedirect("errorPage.jsp");
            
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
