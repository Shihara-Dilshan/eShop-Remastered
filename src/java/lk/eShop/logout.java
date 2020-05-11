
package lk.eShop;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "logout", urlPatterns = {"/logout"})
public class logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        session.removeAttribute("useremail");
        session.removeAttribute("adminemail");
        session.invalidate();
        response.sendRedirect("index.jsp");
        
        
        
         if (request.getServletContext().getAttribute("cartItemList") != null) {
                   
             ServletContext application = getServletContext();
             application.removeAttribute("cartItemList");
        
         }

        
         
        
        
        
        
        
        
        
        
    }

   

}
