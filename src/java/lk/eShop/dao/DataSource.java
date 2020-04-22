package lk.eShop.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DataSource {
    
    private final String url = "jdbc:mysql://localhost:3306/user";
    private final String DBusername = "root";
    private final String DBpassword = "classified23";
    Connection con = null;
    
    public Connection createConnection() throws ClassNotFoundException, SQLException{
    
        if(con == null)
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,DBusername,DBpassword);
            
            return con;
            
        }
        return con;
    }
    
}
