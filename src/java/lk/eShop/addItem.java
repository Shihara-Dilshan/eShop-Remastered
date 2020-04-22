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


@WebServlet(name = "addItem", urlPatterns = {"/addItem"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2 ,
                 maxFileSize = 1024 * 1024 * 10,
                 maxRequestSize = 1024 * 1024 * 50)
public class addItem extends HttpServlet {
    
    private String Iname;
    private String IPrice;
    private String IDesc;
    private String IcatName;
    private String qty;
    private String fileName;
    private String savePath;

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

    
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
         
        ItemDaoImplement sdao = new ItemDaoImplement();
         
        
        
        this.setIname(request.getParameter("iname"));
        this.setIPrice(request.getParameter("iprice"));
        this.setIDesc(request.getParameter("itemDesc"));
        this.setIcatName(request.getParameter("Icategory"));
        this.setQty(request.getParameter("qty"));
        Part part = request.getPart("Iimage"); 
        
        fileName = getFileName(part);
       
        savePath = "home\\noobmaster\\NetBeansProjects\\WebApplication3\\web\\image\\"+ fileName ;
        
        
        if(sdao.Additem(Iname, IPrice , IDesc ,IcatName , qty ,fileName , savePath )){
            
            //HttpSession session = request.getSession();
            //session.setAttribute("additem", "yes");
            
            
            response.sendRedirect("adminindex.jsp");
            
            
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
