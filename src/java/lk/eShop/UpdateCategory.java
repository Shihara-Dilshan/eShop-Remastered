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



@WebServlet(name = "UpdateCategory", urlPatterns = {"/UpdateCategory"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2 ,
                 maxFileSize = 1024 * 1024 * 10,
                 maxRequestSize = 1024 * 1024 * 50)
public class UpdateCategory extends HttpServlet {

    private String Cname;
    private String CDescription;
    private String fileName;
    private String savePath;
    private String Oldbname;


    public void setCname(String Bname) {
        this.Cname = Bname;
    }

    public void setCDescription(String BDescription) {
        this.CDescription = BDescription;
    }

    
    public void setOldbname(String Oldbname) {
        this.Oldbname = Oldbname;
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        ItemDaoImplement sdaoUpdateCat = new ItemDaoImplement();
         
        
        
        this.setCname(request.getParameter("bname"));
        this.setCDescription(request.getParameter("bmanufast"));
        this.setOldbname(request.getParameter("Oldbname"));
        Part part = request.getPart("bimage"); 
        
        fileName = getFileName(part);
       
       
        if(sdaoUpdateCat.UpdateCategory(Cname, CDescription , fileName , Oldbname )){
            
            
            response.sendRedirect("ManageCategory.jsp?result=updated");
            
            
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
