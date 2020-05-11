package lk.eShop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserDaoImplement implements UserDao{
    
    private final String sqlALogin = "select * from admin where name=? and password=?";
    private final String sqlULogin = "select * from user where name=? and password=?"; 
    private final String sqlSignup = "insert into user( name,password,fname,lname,country,address,creditCard,cpin) values(?,?,?,?,?,?,?,?)";
    private final String sqlUpdateUserbasics = "update user set name = ? , fname = ? , lname = ? , country = ? , address = ? where name = ?";
    private final String sqlUpdateCreditC = "update user set creditCard = ? , cpin = ? where name = ?";
    private final String sqlUpdateUPwd = "update user set password = ? where name = ? and password = ?";
    
    
    @Override
    public boolean adminLoginCheck(){
        
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
    public boolean loginCheck(User loginUser) {
    
            
             
        
        
            try{
            DataSource loginChecksource = new DataSource();
            Connection con = loginChecksource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlULogin);
            st.setString(1, loginUser.getEmail());
            st.setString(2, loginUser.getPassword());
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
    
    @Override
    public boolean signUp(User newSignedUser) {
    
            
        
            try{
            DataSource signUpsource = new DataSource();
            Connection con = signUpsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlSignup);
            st.setString(1, newSignedUser.getEmail());
            st.setString(2, newSignedUser.getPassword());
            st.setString(3, newSignedUser.getFirstName());
            st.setString(4, newSignedUser.getLastName());
            st.setString(5, newSignedUser.getCountry());
            st.setString(6, newSignedUser.getCountry());
            st.setString(7, newSignedUser.getCreditCard());
            st.setString(8, newSignedUser.getCpin());
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
    public boolean updateUserBasics(User editBasics) {
    
            
        
            try{
            DataSource signUpsource = new DataSource();
            Connection con = signUpsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlUpdateUserbasics);
            st.setString(1, editBasics.getEmail());
            st.setString(2, editBasics.getFirstName());
            st.setString(3, editBasics.getLastName());
            st.setString(4, editBasics.getCountry());
            st.setString(5, editBasics.getAddress());
            st.setString(6, editBasics.getOldEmail());
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
    public boolean updateCreditCard(User editCredit) {
    
            
        
            try{
            DataSource signUpsource = new DataSource();
            Connection con = signUpsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlUpdateCreditC);
            st.setString(1, editCredit.getCreditCard());
            st.setString(2, editCredit.getCpin());
            st.setString(3, editCredit.getEmail());
           
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
    public boolean changeUserPassword(User updatePWD) {
    
            
        
            try{
            DataSource signUpsource = new DataSource();
            Connection con = signUpsource.createConnection();
            PreparedStatement st = con.prepareStatement(sqlUpdateUPwd);
            st.setString(1, updatePWD.getPassword());
            st.setString(2, updatePWD.getEmail());
            st.setString(3, updatePWD.getOldPassword());
           
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
