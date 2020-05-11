package lk.eShop;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.User;
import lk.eShop.dao.UserDaoImplement;


@WebServlet(name = "updateUserBasics", urlPatterns = {"/updateUserBasics"})
public class updateUserBasics extends HttpServlet {

    User editUser = new User();
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        UserDaoImplement updatedaoUB = new UserDaoImplement();
        
        editUser.setEmail(request.getParameter("email"));
        editUser.setFirstName(request.getParameter("first_name"));
        editUser.setLastName(request.getParameter("last_name"));
        editUser.setCountry(request.getParameter("country"));
        editUser.setAddress(request.getParameter("address"));
        editUser.setOldEmail(request.getParameter("OldEmail"));
        
        
        
        if(updatedaoUB.updateUserBasics(editUser)){
            
            response.sendRedirect("userProfile.jsp?result=updated");
            
            
        }
        else{
            response.sendRedirect("userProfile.jsp?result=updatefailed");
        }
         
        }  
        
        
        
        
    

}
