
package lk.eShop.dao;
 

interface UserDao {
    
    boolean adminLoginCheck();
    boolean loginCheck(User loginUser);
    boolean signUp(User newSignedUser);
    boolean updateUserBasics(User editBasics);
    boolean updateCreditCard(User editCredit);
    boolean changeUserPassword(User updatePWD);
    
}
