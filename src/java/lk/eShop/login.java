
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
import lk.eShop.dao.User;
import lk.eShop.dao.UserDaoImplement;



@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet  {

    User loginUser = new User();
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
        UserDaoImplement dao = new UserDaoImplement();
        
        loginUser.setEmail(request.getParameter("email"));
        loginUser.setPassword(request.getParameter("password"));
        
        
        if(dao.loginCheck(loginUser)){
            
            HttpSession session = request.getSession();
            session.setAttribute("useremail", loginUser.getEmail());
            response.sendRedirect("index.jsp");
            
        }else
        {
            
            response.sendRedirect("login.jsp?result=failed");
            
        }
        
        }
    }



   
