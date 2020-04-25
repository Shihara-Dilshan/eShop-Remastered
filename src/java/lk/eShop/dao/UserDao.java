
package lk.eShop.dao;
 

interface UserDao {
    
    boolean adminLoginCheck();
    boolean loginCheck();
    boolean signUp();
    boolean updateUserProfile();
    boolean updateUserBasics();
    boolean updateCreditCard();
    boolean changeUserPassword();
    
}
