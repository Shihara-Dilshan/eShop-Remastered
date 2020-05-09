package lk.eShop.dao;


public class User {
    
    private String Email;
    private String firstName;
    private String lastName;
    private String Password;
    private String country;
    private String address;
    private String creditCard;
    private String cpin;
    private String oldEmail;
    private String oldPassword;

    public String getOldPassword() {
        
        return oldPassword;
        
    }

    public void setOldPassword(String oldPassword) {
        
        this.oldPassword = oldPassword;
        
    }

    public String getOldEmail() {
        
        return oldEmail;
        
    }

    public void setOldEmail(String oldEmail) {
        
        this.oldEmail = oldEmail;
        
    }

    public String getEmail() {
        
        return Email;
        
    }

    public void setEmail(String Email) {
        
        this.Email = Email;
        
    }

    public String getFirstName() {
        
        return firstName;
        
    }

    public void setFirstName(String firstName) {
        
        this.firstName = firstName;
        
    }

    public String getLastName() {
        
        return lastName;
        
    }

    public void setLastName(String lastName) {
        
        this.lastName = lastName;
        
    }

    public String getPassword() {
        
        return Password;
        
    }

    public void setPassword(String Password) {
        
        this.Password = Password;
        
    }

    public String getCountry() {
        
        return country;
        
    }

    public void setCountry(String country) {
        
        this.country = country;
        
    }

    public String getAddress() {
        
        return address;
        
    }

    public void setAddress(String address) {
        
        this.address = address;
        
    }

    public String getCreditCard() {
        
        return creditCard;
        
    }

    public void setCreditCard(String creditCard) {
        
        this.creditCard = creditCard;
        
    }

    public String getCpin() {
        
        return cpin;
        
    }

    public void setCpin(String cpin) {
        
        this.cpin = cpin;
        
    }
    
}
