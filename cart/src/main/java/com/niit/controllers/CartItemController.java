package com.niit.controllers;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.CartItem;
import com.niit.model.Customer;
import com.niit.model.Product;
import com.niit.service.CartItemService;
import com.niit.service.CustomerService;
import com.niit.service.ProductService;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class CartItemController {

	@Autowired
	private CartItemService cartItemService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private ProductService productService;

	/*
	 * @RequestMapping("/cart/addToCart/{id}") public String
	 * addToCart(@PathVariable int id, Model model) {
	 * System.out.println("Hello"); Product product =
	 * productService.getProductById(id); System.out.println("HEY" +
	 * product.getName());
	 * 
	 * Authentication auth =
	 * SecurityContextHolder.getContext().getAuthentication(); String name =
	 * auth.getName(); // get logged in username System.out.println("Name" +
	 * name); Customer id1 = customerService.getCustomerByName(name);
	 * System.out.println("custid" + id1);
	 * 
	 * cartItemService.addCartItem(product, id1); List<CartItem> cartItem =
	 * cartItemService.getAllCartItem();
	 * 
	 * model.addAttribute("cartItems", cartItem);
	 * 
	 * return "cartItem"; }
	 */

	@RequestMapping("/cart/addToCart/{id}")
	public String addToCart(@PathVariable int id, Model model) {
		System.out.println("Hello");
		Product product = productService.getProductById(id);
		System.out.println("HEY" + product.getName());

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); // get logged in username
		System.out.println("Name" + name);
		Customer id1 = customerService.getCustomerByName(name);
		System.out.println("custid" + id1);

		cartItemService.addCartItem(product, id1);
		/*
		 * List<CartItem> cartItem = cartItemService.getAllCartItem();
		 * 
		 * model.addAttribute("cartItems", cartItem);
		 */
		return "successful";
	}

	@RequestMapping("/cart/ViewCart")
	public String getCart(Model model) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); // get logged in username
		System.out.println("Name" + name);
		Customer id1 = customerService.getCustomerByName(name);

		List<CartItem> cartItem = cartItemService.getAllCartItemById(id1);
		double s = 0;
		for (CartItem t : cartItem) {
			System.out.println("ProductPrice:" + t.getTotalprice());

			s = s + t.getTotalprice();
			System.out.println("GrandTotal:" + s);

		}

		System.out.println("CartSize:" + cartItem.size());

		model.addAttribute("grandtotal", s);
		model.addAttribute("cartItems", cartItem);
		return "cartItem";
	}

	@RequestMapping("/cart/deleteCartItem/{id}")
	public String removeCartItem(@PathVariable int id) {
		cartItemService.deleteCartItem(id);
		return "redirect:/cart/ViewCart";
	}

	@RequestMapping("/cart/deleteAllCartItem")
	public String removeAllCartItems() {

		cartItemService.removeAllCartItem();

		return "redirect:/all/product/productlist";
	}

}