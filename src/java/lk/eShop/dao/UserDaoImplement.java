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
    private final String sqlSignup = "insert into user( id,name,password,fname,lname,country,address,creditCard,cpin) values(4,?,?,?,?,?,?,?,?)";
    private final String sqlUpdateUserbasics = "update user set name = ? , fname = ? , lname = ? , country = ? , address = ? where name = ?";
    private final String sqlUpdateCreditC = "update user set creditCard = ? , cpin = ? where name = ?";
    private final String sqlUpdateUPwd = "update user set password = ? where name = ? and password = ?";
    
    
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
    public boolean updateUserBasics(){
    
        return false;
    
    }
    
    @Override
    public boolean updateCreditCard(){
    
        return false;
    
    }
    
    @Override
    public boolean changeUserPassword(){
    
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
    public boolean signUp(String name, String password, String firstName, String lastName, String country, String address, String creditCard, String cpin) {
    
            
        
            try{
            DataSource signUpsource = new DataSource();
            Connection con = signUpsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlSignup);
            st.setString(1, name);
            st.setString(2, password);
            st.setString(3, firstName);
            st.setString(4, lastName);
            st.setString(5, country);
            st.setString(6, address);
            st.setString(7, creditCard);
            st.setString(8, cpin);
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
    
    //overloading the real updateUserBasics function
    public boolean updateUserBasics(String name, String firstName, String lastName, String country, String address , String oldEmail) {
    
            
        
            try{
            DataSource signUpsource = new DataSource();
            Connection con = signUpsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlUpdateUserbasics);
            st.setString(1, name);
            st.setString(2, firstName);
            st.setString(3, lastName);
            st.setString(4, country);
            st.setString(5, address);
            st.setString(6, oldEmail);
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
    
    //overloading the real updateUserBasics function
    public boolean updateCreditCard(String cardNo, String pin , String Email) {
    
            
        
            try{
            DataSource signUpsource = new DataSource();
            Connection con = signUpsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlUpdateCreditC);
            st.setString(1, cardNo);
            st.setString(2, pin);
            st.setString(3, Email);
           
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
    
    //overloading the real changeUserPassword function
    public boolean changeUserPassword(String oldPassword, String newPassword , String Email) {
    
            
        
            try{
            DataSource signUpsource = new DataSource();
            Connection con = signUpsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlUpdateUPwd);
            st.setString(1, newPassword);
            st.setString(2, Email);
            st.setString(3, oldPassword);
           
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
