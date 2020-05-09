package lk.eShop.dao;


public class Item {

    private String ItemName;
    private String ItemPrice;
    private String ItemDesc;
    private String ItemCatName;
    private String ItemQuantity;
    private String fileName;
    private String oldItemName;
    private int id;
    private int idCount = 0 ;
    private int itemRealid;
    
   
    

    
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
    
    public void setItemRealid(int itemRealid) {
        
        this.itemRealid = itemRealid;
        
    }

    public void setItemDesc(String ItemDesc) {
        
        this.ItemDesc = ItemDesc;
        
    }

    public void setItemCatName(String ItemCatName) {
        
        this.ItemCatName = ItemCatName;
        
    }

    public void setItemQuantity(String ItemQuantity) {
        
        this.ItemQuantity = ItemQuantity;
        
    }

    public void setFileName(String fileName) {
        
        this.fileName = fileName;
        
    }
    
    
    public void setOldItemName(String oldItemName) {
        
        this.oldItemName = oldItemName;
        
    }
    
    
    public int getItemRealid() {
        
        return itemRealid;
        
    }
    
     public String getItemDesc() {
         
        return ItemDesc;
        
    }

    public String getItemCatName() {
        
        return ItemCatName;
        
    }

    public String getItemQuantity() {
        
        return ItemQuantity;
        
    }
    
    public String getFileName() {
        
        return fileName;
        
    }
    
    
    public String getOldItemName() {
        
        return oldItemName;
        
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
