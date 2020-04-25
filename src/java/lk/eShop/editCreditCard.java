package lk.eShop;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.UserDaoImplement;


@WebServlet(name = "editCreditCard", urlPatterns = {"/editCreditCard"})
public class editCreditCard extends HttpServlet {

    String CCardNo;
    String Cpin;
    String Email;

    

    public void setCCardNo(String CCardNo) {
        this.CCardNo = CCardNo;
    }

    public void setCpin(String Cpin) {
        this.Cpin = Cpin;
    }
    
    public void setEmail(String Email) {
        this.Email = Email;
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        UserDaoImplement sdaoEditCcard = new UserDaoImplement();
        
        this.setCCardNo(request.getParameter("creditCard"));
        this.setCpin(request.getParameter("pin"));
        this.setEmail(request.getParameter("OldEmail"));
        
        if(sdaoEditCcard.updateCreditCard(CCardNo, Cpin, Email)){
            
            response.sendRedirect("userProfile.jsp?result=updated");
            
            
        }
        else{
            response.sendRedirect("signup.jsp?result=regFailed");
        }
         
        }  
        
        
        
    
}
