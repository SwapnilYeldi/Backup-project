package com.niit.dao;

import java.util.List;

import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Customer;
import com.niit.model.Product;

public interface CartItemDao {

	/*void addCartItem(Product product);*/

	void addCartItem(Product product, Customer id);

	List<CartItem> getAllCartItem();

	void removeCartItem(int id);

	void removeAllCartItem();

	List<CartItem> getAllItemById(Customer id1);

	
	
	
	
	
/*	void addCartItem(CartItem cartItem);

	void removeCartItem(int cartItemId);

	void removeAllCartItem(Cart cart);*/

}
