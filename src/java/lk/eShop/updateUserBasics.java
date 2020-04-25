package lk.eShop;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.UserDaoImplement;


@WebServlet(name = "updateUserBasics", urlPatterns = {"/updateUserBasics"})
public class updateUserBasics extends HttpServlet {

    private String Fname;
    private String firstName;
    private String lastName;
    private String country;
    private String address;
    private String OldEmail;

    
    
    public void setFname(String Fname) {
        this.Fname = Fname;
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

    public void setOldEmail(String OldEmail) {
        this.OldEmail = OldEmail;
    }
    

    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        UserDaoImplement updatedaoUB = new UserDaoImplement();
        
        this.setFname(request.getParameter("email"));
        this.setFirstName(request.getParameter("first_name"));
        this.setLastName(request.getParameter("last_name"));
        this.setCountry(request.getParameter("country"));
        this.setAddress(request.getParameter("address"));
        this.setOldEmail(request.getParameter("OldEmail"));
        
        if(updatedaoUB.updateUserBasics(Fname , firstName, lastName, country, address ,OldEmail)){
            
            response.sendRedirect("userProfile.jsp?result=updated");
            
            
        }
        else{
            response.sendRedirect("userProfile.jsp?result=updatefailed");
        }
         
        }  
        
        
        
        
    

}
