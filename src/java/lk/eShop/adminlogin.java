package lk.eShop;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import lk.eShop.dao.UserDaoImplement;



@WebServlet(name = "adminlogin", urlPatterns = {"/adminlogin"})
public class adminlogin extends HttpServlet {

    private String name;
    private String password;

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public adminlogin(){
        
        
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
            UserDaoImplement Adao = new UserDaoImplement();
            
            setName(request.getParameter("email"));
            setPassword(request.getParameter("password"));
            
            if((Adao.adminLoginCheck(name, password))){
                
                HttpSession session = request.getSession();
                session.setAttribute("adminemail", name);
                
                
                response.sendRedirect("adminindex.jsp");
                
            }else
            {
                response.sendRedirect("adminlogin.jsp");
                
            }
        
        
       
        
        }
   
}
