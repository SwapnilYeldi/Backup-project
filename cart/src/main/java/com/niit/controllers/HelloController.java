package com.niit.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.service.CategoryService;

@Controller
public class HelloController {
	@Autowired
	private CategoryService categoryService;
	@RequestMapping("/homePage")
public String gethomePage(HttpSession session){
		session.setAttribute("categories",categoryService.getAllCategories());
		return "Home";
	}
	
	@RequestMapping("/aboutus")
	public String getComboPage() {
		return "AboutUs";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam(value="error",required=false) String error,
			@RequestParam(value="logout",required=false) String logout,
			Model model){
		if(error!=null)
			model.addAttribute("error","Invalid Username and Password.. Please enter valid username and password");
		if(logout!=null)
			model.addAttribute("logout","Loggedout successfully");
		return "login";
		
	}
}
