package com.niit.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Customer;
import com.niit.model.Product;

@Repository
public class CartItemDaoImpl implements CartItemDao {

	@Autowired
	private SessionFactory sessionFactory;
	
/*	
	public void addCartItem(CartItem cartItem) {
	
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(cartItem);
		session.flush();
		session.close();

	}

	
	public void removeCartItem(int cartItemId) {
           
		    Session session=sessionFactory.openSession();
		    CartItem cartItem=(CartItem)session.get(CartItem.class, cartItemId);
		    session.delete(cartItem);
		    session.flush();
		    session.close();

	}


	
	public void removeAllCartItem(Cart cart) {
     
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from cartItem"); 
		 List<CartItem> cartItem=query.list();
		 session.delete(cartItem);
		 session.close();
		}
*/

	
	public void addCartItem(Product product) {
		Session session=sessionFactory.openSession();
		System.out.println("pro");
		session.save(product);
		session.flush();
		session.close();
		
	}


	public void addCartItem(Product product, Customer id) {
		System.out.println("Before save");
		Session session=sessionFactory.openSession();
		List<CartItem> cartItemlist=getAllItemById(id);
	//	System.out.println("Product2432"+cartItemlist.contains(product));
		int flag=0;
		for(CartItem c:cartItemlist)
		{
			if(c.getProduct().getId()==product.getId())
			{
				System.out.println("added");
				flag=1;
				c.setQuantity(c.getQuantity()+1);
				c.setTotalprice(c.getTotalprice()+c.getProduct().getPrice());
				session.saveOrUpdate(c);
				session.flush();
				session.close();
				break;
			}
			
		}
		if(flag==0)
		{
		CartItem cartItem=new CartItem();
		cartItem.setQuantity(1);
		cartItem.setTotalprice(product.getPrice());
		cartItem.setProduct(product);
		cartItem.setCustomer(id);
		
		session.save(cartItem);
		System.out.println("After Save");
		session.flush();
		session.close();
		}
	}



	public List<CartItem> getAllCartItem() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from CartItem");
		List<CartItem> cartItem = query.list();
		session.close();
		return cartItem;
	}



	public void removeCartItem(int id) {
	Session	session=sessionFactory.openSession();
	 CartItem cartItem=(CartItem)session.get(CartItem.class, id);
	 session.delete(cartItem);
	    session.flush();
	    session.close();
		
	}


	public void removeAllCartItem() {
		
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from CartItem"); 
		 List<CartItem> cartItem=query.list();
		 
		 for(CartItem c:cartItem)
		 {
			 System.out.println("Deleted12");
			 session.delete(c);
		 }
		 //session.delete(cartItem.get(0));
		 session.flush();
		 session.close();
	
		
	}


/*	public List<CartItem> getAllItemById(Customer id1) {
		// TODO Auto-generated method stub
		Session	session=sessionFactory.openSession();
		List <CartItem> cartItem=(List<CartItem>)session.get(CartItem.class, id1);
		 session.saveOrUpdate(cartItem);
		    session.flush();
		    session.close();
		return cartItem;
	}
*/

	public List<CartItem> getAllItemById(Customer id1) {
		// TODO Auto-generated method stub

		System.out.println("customeruuuuu"+id1);
		Session	session=sessionFactory.openSession();
		Query query=session.createQuery("from CartItem where Customer_Id="+id1.getId()+""); 
		List <CartItem> cartItem=query.list();
		// session.saveOrUpdate(cartItem);
		    session.flush();
		    session.close();
		return cartItem;
	}


	
	
	
	
	
	
	

	
	/* public void removeAllCartItem(Cart cart) {
		List<CartItem> cartItems=cart.getCartItems();
		for(CartItem cartItem:cartItems){
			removeCartItem(cartItem.getCartItemId());
		}
		}*/

}
