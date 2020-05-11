package lk.eShop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class ItemDaoImplement implements ItemDao {
    
    private final String sqlCatInsert = "insert into category( id , Cname,CDescription,CfileName ) values(1,?,?,?)";
    private final String sqlAddItem = "insert into item( id , name,descr,price , catName , filename , qty  ) values(1,?,?,?,?,?,?)";
    private final String sqlCatUpdate = "update category set Cname=? , CDescription=? , CfileName=? where Cname=? ";
    private final String sqlItemUpdate = "update item set name=? , descr=? , price=? , catName=? , qty=? , filename=?  where name=? ";
    private final String sqlCatDelete = "delete from category where Cname=?";
    private final String sqlItemDelete = "delete from item where name=?";
    private final String sqlbuyItem = "update ItemCopy set cusid=? , PDate=CURRENT_TIMESTAMP , status = 'pending' where itemId=? and cusid is null limit 1";
    private final String sqlConfirmOrder = "update ItemCopy set status = 'delivered' where Cid=?";
    private final String sqlCancelOrder = "update ItemCopy set status = 'Cancelled'  where Cid=?";
    private final String sqlrestockOrder = "update ItemCopy set cusid = NULL , status = NULL  where Cid=?";
    
    
    
    @Override
    public boolean buyItem(){
    
        return false;
    
    }
    
    @Override
    public boolean AddCategory(Category newAddedCat){
    
        
        
            try{
            DataSource AddCategorysource = new DataSource();
            Connection con = AddCategorysource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlCatInsert);
           
            st.setString(1, newAddedCat.getCategoryName());
            st.setString(2, newAddedCat.getCategoryDescription());
            st.setString(3, newAddedCat.getFileName());
            
            
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
    
    @Override
    public boolean Additem(Item newAddedItem){
    
        
          //String Iname,String IPrice , String IDesc , String IcatName ,String qty , String fileName 
            try{
            DataSource Additemsource = new DataSource();
            Connection con = Additemsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlAddItem);
           
            st.setString(1, newAddedItem.getItemName());
            st.setString(2, newAddedItem.getItemDesc());
            st.setString(3, newAddedItem.getItemPrice());
            st.setString(4, newAddedItem.getItemCatName());
            st.setString(5, newAddedItem.getFileName());
            st.setString(6, newAddedItem.getItemQuantity());
            
            
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
    
    
    @Override
    public boolean UpdateCategory(Category UpdateCat){
    
        
            try{
            DataSource UpdateCategorysource = new DataSource();
            Connection con = UpdateCategorysource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlCatUpdate);
           
            st.setString(1, UpdateCat.getCategoryName());
            st.setString(2, UpdateCat.getCategoryDescription());
            st.setString(3, UpdateCat.getFileName());
            st.setString(4, UpdateCat.getOldCategoryName());
            
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
    
     
    @Override
    public boolean UpdateItem(Item UpdateItem){
    
            
            try{
            DataSource UpdateItemSource = new DataSource();
            Connection con = UpdateItemSource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlItemUpdate);
           
            st.setString(1, UpdateItem.getItemName());
            st.setString(2, UpdateItem.getItemDesc());
            st.setString(3, UpdateItem.getItemPrice());
            st.setString(4, UpdateItem.getItemCatName());
            st.setString(5, UpdateItem.getItemQuantity());
            st.setString(6, UpdateItem.getFileName());
            st.setString(7, UpdateItem.getOldItemName());
            
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
    public boolean DeleteCategory(Category DeleteCat){
    
        
            try{
            DataSource DeleteCategorysource = new DataSource();
            Connection con = DeleteCategorysource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlCatDelete);
           
            st.setString(1, DeleteCat.getCategoryName());
           
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
    
    
    @Override
    public boolean DeleteItem(Item DeleteItem){
    
        
            try{
            DataSource DeleteItemsource = new DataSource();
            Connection con = DeleteItemsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlItemDelete);
           
            st.setString(1, DeleteItem.getItemName());
           
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
    
    //overloading the real buyItem function
    public boolean buyItem(int UserId , int ItemId){
    
        
            try{
            DataSource DeleteItemsource = new DataSource();
            Connection con = DeleteItemsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlbuyItem);
           
            st.setString(1, String.valueOf(UserId));
            st.setString(2, String.valueOf(ItemId));
            
           
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
    
    @Override
    public boolean ConfirmOrder(String itemId){
    
        try{
            DataSource confirmOrdersource = new DataSource();
            Connection con = confirmOrdersource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlConfirmOrder);
           
            st.setString(1, itemId);
            
            
           
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
    
    @Override
    public boolean CancelOrder(String CancelItemId){
    
        try{
            DataSource CancelOrdersource = new DataSource();
            Connection con = CancelOrdersource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlCancelOrder);
           
            st.setString(1, CancelItemId);
            
            
           
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
    
    @Override
    public boolean restockItem(String restockItemId){
    
        try{
            DataSource restockItemsource = new DataSource();
            Connection con = restockItemsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlrestockOrder);
           
            st.setString(1, restockItemId);
            
            
           
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
