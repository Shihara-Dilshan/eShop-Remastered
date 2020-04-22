
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



@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet  {

    private String name;
    private String password;
    
    
    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
        UserDaoImplement dao = new UserDaoImplement();
        
        this.setName(request.getParameter("email"));
        this.setPassword(request.getParameter("password"));
        if((dao.loginCheck(name, password))){
            
            HttpSession session = request.getSession();
            session.setAttribute("useremail", name);
            response.sendRedirect("index.jsp");
            
        }else
        {
            
            response.sendRedirect("login.jsp");
            
        }
        
        }
    }



   
