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
import lk.eShop.dao.ItemDaoImplement;


@WebServlet(name = "addCategory", urlPatterns = {"/addCategory"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2 ,
                 maxFileSize = 1024 * 1024 * 10,
                 maxRequestSize = 1024 * 1024 * 50)
public class addCategory extends HttpServlet {

    
    private String Cname;
    private String CDescription;
    private String fileName;
    private String savePath;

    public void setCname(String Bname) {
        this.Cname = Bname;
    }

    public void setCDescription(String BDescription) {
        this.CDescription = BDescription;
    }

   
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        ItemDaoImplement sdao = new ItemDaoImplement();
         
        
        
        this.setCname(request.getParameter("bname"));
        this.setCDescription(request.getParameter("bmanufast"));
        Part part = request.getPart("bimage"); 
        
        fileName = getFileName(part);
       
        savePath = "home\\noobmaster\\NetBeansProjects\\WebApplication3\\web\\image\\"+ fileName ;
        
        
        if(sdao.AddCategory(Cname, CDescription , fileName , savePath )){
            
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
