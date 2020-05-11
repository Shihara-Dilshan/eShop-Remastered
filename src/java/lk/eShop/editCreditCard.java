package lk.eShop;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.User;
import lk.eShop.dao.UserDaoImplement;


@WebServlet(name = "editCreditCard", urlPatterns = {"/editCreditCard"})
public class editCreditCard extends HttpServlet {

    User editUserCredit = new User();
    UserDaoImplement sdaoEditCcard = new UserDaoImplement();
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        
        editUserCredit.setCreditCard(request.getParameter("creditCard"));
        editUserCredit.setCpin(request.getParameter("pin"));
        editUserCredit.setEmail(request.getParameter("OldEmail"));
       
        
        if(sdaoEditCcard.updateCreditCard(editUserCredit)){
            
            response.sendRedirect("userProfile.jsp?result=updated");
            
            
        }
        else{
            response.sendRedirect("signup.jsp?result=cardFailed");
        }
         
        }  
        
        
        
    
}
