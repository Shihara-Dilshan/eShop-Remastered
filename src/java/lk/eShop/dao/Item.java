package lk.eShop.dao;


public class Item {

    private String ItemName;
    private String ItemPrice;
    private int id;
    private int idCount = 0 ;

    
    public void setItemName(String ItemName) {
        this.ItemName = ItemName;
    }

    public void setItemPrice(String ItemPrice) {
        this.ItemPrice = ItemPrice;
    }
    
    public void setId() {
        this.id = idCount;
        this.idCount++;
    }
    
    
    public String getItemName() {
        return this.ItemName;
    }

    public String getItemPrice() {
        return this.ItemPrice;
    }
    
    
    public int getId() {
        return this.id;
    }

    
   
}
