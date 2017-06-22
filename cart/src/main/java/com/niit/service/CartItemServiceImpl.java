package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CartItemDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Customer;
import com.niit.model.Product;

@Service
public class CartItemServiceImpl implements CartItemService {

	@Autowired
	private CartItemDao cartItemDao;
	
	/*public void addCartItem(CartItem cartItem) {
		
		cartItemDao.addCartItem(cartItem);		
	}*/

/*
	public void removeCartItem(int cartItemId) {
		
		cartItemDao.removeCartItem(cartItemId);
	
	
	}


	public void removeAllCartItems(Cart cart) {
		cartItemDao.removeAllCartItem(cart);
		
	}*/


	
	public void addCartItem(Product product, Customer id) {
		cartItemDao.addCartItem(product,id);
		
	}


	public List<CartItem> getAllCartItem() {
		return cartItemDao.getAllCartItem();
	}

	public void deleteCartItem(int id) {
		cartItemDao.removeCartItem(id);
		
	}


	
	public void removeAllCartItem() {
		cartItemDao.removeAllCartItem();
		
	}


	public List<CartItem> getAllCartItemById(Customer id1) {
		// TODO Auto-generated method stub
		return cartItemDao.getAllItemById(id1);
	}
	
	

}
