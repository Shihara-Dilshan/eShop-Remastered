
package lk.eShop.dao;
 

interface UserDao {
    
    boolean adminLoginCheck();
    boolean loginCheck();
    boolean signUp();
    boolean updateUserProfile();
    boolean searchItem();
    
    
}
