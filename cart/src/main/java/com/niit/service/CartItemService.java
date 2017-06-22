package com.niit.service;

import java.util.List;

import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Customer;
import com.niit.model.Product;

public interface CartItemService {
/*
	//void addCartItem(CartItem cartItem);
	void removeCartItem(int cartItemId);
	void removeAllCartItems(Cart cart);*/
	/*void addCartItem(Product product);*/

	void addCartItem(Product product, Customer id);

	List<CartItem> getAllCartItem();

	void deleteCartItem(int id);

	void removeAllCartItem();

	List<CartItem> getAllCartItemById(Customer id1);

	
}
