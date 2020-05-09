package lk.eShop.dao;


public interface ItemDao {
    
    public boolean AddCategory(Category newAddedCat);
    public boolean Additem(Item newAddedItem);
    public boolean UpdateCategory(Category UpdateCat);
    public boolean UpdateItem(Item UpdateItem);
    public boolean DeleteItem(Item DeleteItem);
    public boolean DeleteCategory(Category DeleteCat);
    public boolean buyItem();
    
}
