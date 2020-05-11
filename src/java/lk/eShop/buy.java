package lk.eShop;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import lk.eShop.dao.Item;
import lk.eShop.dao.ItemDaoImplement;


@WebServlet(name = "buy", urlPatterns = {"/buy"})
public class buy extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        ItemDaoImplement sdaoBuy = new ItemDaoImplement();
        
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        
        
        ArrayList<Item> arrayList = new ArrayList<Item>();
        if (request.getServletContext().getAttribute("cartItemList") != null) {
            arrayList = (ArrayList<Item>) request.getServletContext().getAttribute("cartItemList");
        }

        if (!arrayList.isEmpty()) {

            for (Item item : arrayList) {
                out.println((int)session.getAttribute("userID"));
                out.println(item.getItemRealid());
                sdaoBuy.buyItem((int)session.getAttribute("userID"), item.getItemRealid());
                
            }
            
            if (request.getServletContext().getAttribute("cartItemList") != null) {
                   
             ServletContext application = getServletContext();
             application.removeAttribute("cartItemList");
        
            }
            response.sendRedirect("index.jsp?show=showAll&result=buyTrue");
        }
    }
}
