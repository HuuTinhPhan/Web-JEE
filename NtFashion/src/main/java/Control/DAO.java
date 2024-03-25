package Control;

import java.util.List;

import Modle.Products;

public interface DAO {
	public List<Products> getProducts();

	public Products getProduct(int product_id);

	public String getCategoryName(int category_id);
	
//	public boolean  checkProduct(Products product);

	public boolean addProduct(Products product);

	public void removeProduct(String product_id);

	public void updateProduct(Products product);


}
