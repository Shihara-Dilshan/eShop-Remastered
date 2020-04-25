
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
    private String firstName;
    private String lastName;
    private String country;
    private String address;
    private String creditCard;
    private String cpin;

    
    public void setFname(String Fname) {
        this.Fname = Fname;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
     
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setCreditCard(String creditCard) {
        this.creditCard = creditCard;
    }

    public void setCpin(String cpin) {
        this.cpin = cpin;
    }

    
    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        
        UserDaoImplement sdaoSignUp = new UserDaoImplement();
         
        this.setFname(request.getParameter("email"));
        this.setPassword(request.getParameter("password"));
        this.setFirstName(request.getParameter("first_name"));
        this.setLastName(request.getParameter("last_name"));
        this.setCountry(request.getParameter("country"));
        this.setAddress(request.getParameter("address"));
        this.setCreditCard(request.getParameter("credit_card"));
        this.setCpin(request.getParameter("credit_cardPin"));
        
         
        if(sdaoSignUp.signUp(Fname, Password, firstName, lastName, country, address, creditCard, cpin)){
            
            response.sendRedirect("index.jsp?result=Registed");
            
            
        }
        else{
            response.sendRedirect("signup.jsp?result=regFailed");
        }
         
        }  
        



}

