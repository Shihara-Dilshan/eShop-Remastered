package lk.eShop.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserDaoImplement implements UserDao{
    
    private final String sqlALogin = "select * from admin where name=? and password=?";
    private final String sqlULogin = "select * from user where name=? and password=?"; 
    private final String sqlSignup = "insert into user( id,name,password) values(4,?,?)";
    
    @Override
    public boolean adminLoginCheck(){
        
        return false;
        
    }
    
    @Override
    public boolean loginCheck(){
        
        return false;
        
    }
    
    @Override
    public boolean signUp(){
        
        return false;
        
    }
    
    @Override
    public boolean updateUserProfile(){
    
        return false;
    }
    
    @Override
    public boolean searchItem(){
    
        return false;
    
    }
    
    
    //overloading the real adminLoginCheck function
    public boolean adminLoginCheck(String name , String password) {
            
            
            
        
            try{
            
            DataSource adminLoginChecksource = new DataSource();
            Connection con = adminLoginChecksource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlALogin);
            st.setString(1, name);
            st.setString(2, password);
            ResultSet rs =st.executeQuery();
            
            if(rs.next()){
            
                return true;
            
            }
            }catch(ClassNotFoundException | SQLException e){
            
                e.printStackTrace();
            
            }catch(Exception e){
                e.printStackTrace();
            }
            
            return false;
    }
    
    
    //overloading the real loginCheck function
    public boolean loginCheck(String name , String password) {
    
            
             
        
        
            try{
            DataSource loginChecksource = new DataSource();
            Connection con = loginChecksource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlULogin);
            st.setString(1, name);
            st.setString(2, password);
            ResultSet rs =st.executeQuery();
            
            if(rs.next()){
            
                return true;
            
            }
            }catch(ClassNotFoundException | SQLException e){
            
                e.printStackTrace();
            
            }catch(Exception e){
            
                e.printStackTrace();
                
            }
            
            return false;
    }
    
    //overloading the real signUp function
    public boolean signUp(String name , String password) {
    
            
        
            try{
            DataSource signUpsource = new DataSource();
            Connection con = signUpsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlSignup);
            st.setString(1, name);
            st.setString(2, password);
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
