package lk.eShop;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.User;
import lk.eShop.dao.UserDaoImplement;


@WebServlet(name = "ChangeUserPassword", urlPatterns = {"/ChangeUserPassword"})
public class ChangeUserPassword extends HttpServlet {

    User chnagePWD = new User();
    UserDaoImplement updatePWDdao = new UserDaoImplement();
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        chnagePWD.setOldPassword(request.getParameter("oldPword"));
        chnagePWD.setPassword(request.getParameter("newPassword"));
        chnagePWD.setEmail(request.getParameter("OldEmail"));
        
        
        if(updatePWDdao.changeUserPassword(chnagePWD)){
            
            response.sendRedirect("userProfile.jsp?result=updated");
            
            
        }
        else{
            
             response.sendRedirect("userProfile.jsp?result=pasfailed");
             
        }
        
        
        
    }
}
