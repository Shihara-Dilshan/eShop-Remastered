package lk.eShop.dao;


public class Category {
    
    private String CategoryName;
    private String CategoryDescription;
    private String fileName;
    private String OldCategoryName;

    public String getCategoryName() {
        
        return CategoryName;
        
    }

    public void setCategoryName(String CategoryName) {
        
        this.CategoryName = CategoryName;
        
    }

    public String getCategoryDescription() {
        
        return CategoryDescription;
        
    }

    public void setCategoryDescription(String CategoryDescription) {
        
        this.CategoryDescription = CategoryDescription;
        
    }

    public String getFileName() {
        
        return fileName;
        
    }

    public void setFileName(String fileName) {
        
        this.fileName = fileName;
        
    }

    public String getOldCategoryName() {
        
        return OldCategoryName;
        
    }

    public void setOldCategoryName(String OldCategoryName) {
        
        this.OldCategoryName = OldCategoryName;
        
    }
    
    
    
}
