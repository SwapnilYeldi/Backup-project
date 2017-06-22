package com.niit.handler;

import org.springframework.stereotype.Component;

import com.niit.model.CartItem;

@Component
public class Demohandler {
	
	public CartItem initFlow(){
		System.out.println("flow begin");
		return new CartItem();
	}
}
