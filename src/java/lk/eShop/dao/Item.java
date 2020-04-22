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
        idCount++;
    }
    
    
    public String getItemName() {
        return ItemName;
    }

    public String getItemPrice() {
        return ItemPrice;
    }
    
    
    public int getId() {
        return id;
    }

    
   
}
