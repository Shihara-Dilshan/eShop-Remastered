package lk.eShop;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.UserDaoImplement;


@WebServlet(name = "ChangeUserPassword", urlPatterns = {"/ChangeUserPassword"})
public class ChangeUserPassword extends HttpServlet {

    String OldPassword;
    String NewPassword;
    String Email;

    public void setOldPassword(String OldPassword) {
        this.OldPassword = OldPassword;
    }

    public void setNewPassword(String NewPassword) {
        this.NewPassword = NewPassword;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        UserDaoImplement updatePWDdao = new UserDaoImplement();
        
        this.setOldPassword(request.getParameter("oldPword"));
        this.setNewPassword(request.getParameter("newPassword"));
        this.setEmail(request.getParameter("OldEmail"));
        
        if(updatePWDdao.changeUserPassword(OldPassword ,NewPassword,Email )){
            
            response.sendRedirect("userProfile.jsp?result=updated");
            
            
        }
        else{
             response.sendRedirect("userProfile.jsp?result=pasfailed");
        }
        
        
        
    }
}
