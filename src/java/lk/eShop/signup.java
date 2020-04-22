
package lk.eShop;

import java.io.IOException;
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




@WebServlet(name = "signup", urlPatterns = {"/signup"})
public class signup extends HttpServlet {

    private String Fname;
    private String Password;
   

    public void setFname(String Fname) {
        this.Fname = Fname;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
     
     
    
    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        
        UserDaoImplement sdao = new UserDaoImplement();
         
        this.setFname(request.getParameter("email"));
        this.setPassword(request.getParameter("password"));
          
       
         
        if(sdao.signUp(Fname, Password)){
            HttpSession session = request.getSession();
            session.setAttribute("regsuccess", "yes");
            response.sendRedirect("index.jsp");
            
            
        }
        else{
            response.sendRedirect("login.jsp");
        }
         
        }  
        



}

