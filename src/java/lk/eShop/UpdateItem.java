package lk.eShop;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import lk.eShop.dao.ItemDaoImplement;


@WebServlet(name = "UpdateItem", urlPatterns = {"/UpdateItem"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2 ,
                 maxFileSize = 1024 * 1024 * 10,
                 maxRequestSize = 1024 * 1024 * 50)
public class UpdateItem extends HttpServlet {

    private String Iname;
    private String IPrice;
    private String IDesc;
    private String IcatName;
    private String qty;
    private String fileName;
    private String savePath;
    private String Oldbname;

    
    
    public void setIname(String Iname) {
        this.Iname = Iname;
    }

    public void setIPrice(String IPrice) {
        this.IPrice = IPrice;
    }

    public void setIDesc(String IDesc) {
        this.IDesc = IDesc;
    }

    public void setIcatName(String IcatName) {
        this.IcatName = IcatName;
    }

    public void setQty(String qty) {
        this.qty = qty;
    }
    
    public void setOldbname(String Oldbname) {
        this.Oldbname = Oldbname;
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
      ItemDaoImplement sdaoIupdateI = new ItemDaoImplement();
         
        
        
        this.setIname(request.getParameter("iname"));
        this.setIPrice(request.getParameter("iprice"));
        this.setIDesc(request.getParameter("itemDesc"));
        this.setIcatName(request.getParameter("Icategory"));
        this.setQty(request.getParameter("qty"));
        this.setOldbname(request.getParameter("Oldbname"));
        Part part = request.getPart("Iimage"); 
        
        fileName = getFileName(part);
       
        
        if(sdaoIupdateI.UpdateItem(Iname, IPrice , IDesc ,IcatName , qty ,fileName , Oldbname )){
            
            
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
