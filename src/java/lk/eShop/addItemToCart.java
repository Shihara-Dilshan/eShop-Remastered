
package lk.eShop;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lk.eShop.dao.Item;

@WebServlet(name = "addItemToCart", urlPatterns = {"/addItemToCart"})
public class addItemToCart extends HttpServlet {

    private String Iname;
    private String Iprice;
    private int IId;

    public void setIId(int IId) {
        this.IId = IId;
    }
    

    public void setIname(String Iname) {
        this.Iname = Iname;
    }

    public void setIprice(String Iprice) {
        this.Iprice = Iprice;
    }
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  {
        response.setContentType("text/html;charset=UTF-8");
       
            this.setIname(request.getParameter("item"));
            this.setIprice(request.getParameter("price"));
            this.setIId(Integer.parseInt(request.getParameter("itemID")));
       
            Item item = new Item();
            item.setItemName(Iname);
            item.setItemPrice(Iprice);
            item.setItemRealid(IId);
            item.setId();
            
            
            
            
            ArrayList<Item> arrayList = new ArrayList<Item>();
            arrayList.add(item);
            
            if(request.getServletContext().getAttribute("cartItemList") != null){
            
                arrayList = (ArrayList<Item>) request.getServletContext().getAttribute("cartItemList");
                arrayList.add(item);
                request.getServletContext().setAttribute("cartItemList", arrayList);
                
            }else{
            
                request.getServletContext().setAttribute("cartItemList", arrayList);
                
            }
            
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/item.jsp?show="+request.getParameter("show")+"&result=success");
            rd.forward(request, response);
            //response.sendRedirect("item.jsp?show=showAll&result=success");
            
        }
    

}


 

