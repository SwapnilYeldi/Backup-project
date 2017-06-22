package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;


@Repository
public class CartDaoImpl implements CartDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Cart getCartByCartId(int cartId) {
		
		Session session=sessionFactory.openSession();
    	Cart cart=(Cart)session.get(Cart.class,cartId);
		/*System.out.println(cart.getCartId() + " " + cart.getCartItems());*/
		return cart;

	}
	

}
