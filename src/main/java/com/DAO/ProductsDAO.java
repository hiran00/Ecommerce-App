package com.DAO;

import java.util.List;
import com.entity.Products;

public interface ProductsDAO {

	public boolean addProducts(Products p);
	
	public List<Products> getAllProduct();
	
	public Products getProductsbyId(int id);
	
	public boolean updateEditedProducts(Products p);
	
	public boolean deleteProducts(int id);
	
	public List<Products> getSamsung();
	
	public List<Products> getApple();
	
	public List<Products> getAccessories();
	
	public List<Products> getAllSamsung();
	
	public List<Products> getAllApple();
	
	public List<Products> getAllAccessories();
}
