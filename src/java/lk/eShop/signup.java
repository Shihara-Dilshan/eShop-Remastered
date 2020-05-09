
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




@WebServlet(name = "signup", urlPatterns = {"/signup"})
public class signup extends HttpServlet {

    User newUser = new User();
    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        
        UserDaoImplement sdaoSignUp = new UserDaoImplement();
         
        newUser.setEmail(request.getParameter("email"));
        newUser.setPassword(request.getParameter("password"));
        newUser.setFirstName(request.getParameter("first_name"));
        newUser.setLastName(request.getParameter("last_name"));
        newUser.setCountry(request.getParameter("country"));
        newUser.setAddress(request.getParameter("address"));
        newUser.setCreditCard(request.getParameter("credit_card"));
        newUser.setCpin(request.getParameter("credit_cardPin"));
        
        
         
        if(sdaoSignUp.signUp(newUser)){
            
            response.sendRedirect("index.jsp?result=Registed");
            
            
        }
        else{
            response.sendRedirect("signup.jsp?result=regFailed");
        }
         
        }  
        



}

