package lk.eShop.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.http.Part;


public class ItemDaoImplement implements ItemDao {
    
    private final String sqlCatInsert = "insert into category( id , Cname,CDescription,CfileName , CfilePath ) values(1,?,?,?,?)";
    private final String sqlAddItem = "insert into item( id , name,descr,price , catName , filename , filepath , qty  ) values(1,?,?,?,?,?,?,?)";
    private final String sqlCatUpdate = "update category set Cname=? , CDescription=? , CfileName=? where Cname=? ";
    private final String sqlItemUpdate = "update item set name=? , descr=? , price=? , catName=? , qty=? , filename=?  where name=? ";
    private final String sqlCatDelete = "delete from category where Cname=?";
    private final String sqlItemDelete = "delete from item where name=?";
    
    @Override
    public boolean AddCategory(){
    
        return false;
    }
    
    @Override
    public boolean Additem(){
    
        return false;
        
    }
    
    @Override
    public boolean UpdateCategory(){
    
    
         return false;
    
    }
    
    @Override
    public boolean UpdateItem(){
    
        return false;
    
    }
    
    @Override
    public boolean DeleteItem(){
        
        return false;
        
    }
    
    @Override
    public boolean DeleteCategory(){
        
        return false;
        
    }
    
    //overloading the real AddCategory function
    public boolean AddCategory(String Cname , String Cdesc , String fileName , String FilePath ){
    
        
        
            try{
            DataSource AddCategorysource = new DataSource();
            Connection con = AddCategorysource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlCatInsert);
           
            st.setString(1, Cname);
            st.setString(2, Cdesc);
            st.setString(3, fileName);
            st.setString(4, FilePath);
            
            int i = st.executeUpdate();
            
            if(i!=0){
            
                return true;
            
            }
            }catch(ClassNotFoundException | SQLException e){
            
                e.printStackTrace();
            
            }catch(Exception e){
            
                e.printStackTrace();
            
            }
            
            return false;        
    
        
    }
    
    //overloading the real Additem function
    public boolean Additem(String Iname,String IPrice , String IDesc , String IcatName ,String qty , String fileName ,String savePath ){
    
        
        
            try{
            DataSource Additemsource = new DataSource();
            Connection con = Additemsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlAddItem);
           
            st.setString(1, Iname);
            st.setString(2, IDesc);
            st.setString(3, IPrice);
            st.setString(4, IcatName);
            st.setString(5, fileName);
            st.setString(6, savePath);
            st.setString(7, qty);
            
            
            int i = st.executeUpdate();
            
            if(i!=0){
            
                return true;
            
            }
            }catch(ClassNotFoundException | SQLException e){
            
                e.printStackTrace();
            
            }catch(Exception e){
            
                e.printStackTrace();
            
            }
            
            return false;        
    
        
    }
    
    
    //overloading the real AddCategory function
    public boolean UpdateCategory(String Cname , String Cdesc , String fileName , String FilePath , String Oldbname ){
    
        
            try{
            DataSource UpdateCategorysource = new DataSource();
            Connection con = UpdateCategorysource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlCatUpdate);
           
            st.setString(1, Cname);
            st.setString(2, Cdesc);
            st.setString(3, fileName);
            st.setString(4, Oldbname);
            
            int i = st.executeUpdate();
            
            if(i!=0){
            
                return true;
            
            }
            }catch(ClassNotFoundException | SQLException e){
            
                e.printStackTrace();
            
            }catch(Exception e){
            
                e.printStackTrace();
            
            }
            
            return false;        
    
        
    }
    
     
    //overloading the real UpdateItem function
    public boolean UpdateItem(String Iname,String IPrice , String IDesc , String IcatName ,String qty , String fileName ,String savePath , String Oldbname){
    
        
            try{
            DataSource UpdateItemSource = new DataSource();
            Connection con = UpdateItemSource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlItemUpdate);
           
            st.setString(1, Iname);
            st.setString(2, IDesc);
            st.setString(3, IPrice);
            st.setString(4, IcatName);
            st.setString(5, qty);
            st.setString(6, fileName);
            st.setString(7, Oldbname);
            
            int i = st.executeUpdate();
            
            if(i!=0){
            
                return true;
            
            }
            }catch(ClassNotFoundException | SQLException e){
            
                e.printStackTrace();
            
            }catch(Exception e){
            
                e.printStackTrace();
            
            }
            
            return false;        
    
        
    }
    
     
    //overloading the real AddCategory function
    public boolean DeleteCategory(String Cname){
    
        
            try{
            DataSource DeleteCategorysource = new DataSource();
            Connection con = DeleteCategorysource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlCatDelete);
           
            st.setString(1, Cname);
           
            int i = st.executeUpdate();
            
            if(i!=0){
            
                return true;
            
            }
            }catch(ClassNotFoundException | SQLException e){
            
                e.printStackTrace();
            
            }catch(Exception e){
            
                e.printStackTrace();
            
            }
            
            return false;        
    
        
    }
    
    
    //overloading the real AddCategory function
    public boolean DeleteItem(String Cname){
    
        
            try{
            DataSource DeleteItemsource = new DataSource();
            Connection con = DeleteItemsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlItemDelete);
           
            st.setString(1, Cname);
           
            int i = st.executeUpdate();
            
            if(i!=0){
            
                return true;
            
            }
            }catch(ClassNotFoundException | SQLException e){
            
                e.printStackTrace();
            
            }catch(Exception e){
            
                e.printStackTrace();
            
            }
            
            return false;        
    
        
    }
    
     
    
}
