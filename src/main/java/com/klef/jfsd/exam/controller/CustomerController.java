package com.klef.jfsd.exam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.exam.model.Customer;
import com.klef.jfsd.exam.service.CustomerService;

import ch.qos.logback.core.model.Model;

@Controller
public class CustomerController 
{
	@Autowired
	private CustomerService customerservice;
	
	@GetMapping("/")
	  public String main() 
	  {
		  return "index";
	  }
	
	@GetMapping("viewallcustomers")
	public ModelAndView viewcustomers(Model model)
	  {
		  ModelAndView mv = new ModelAndView("viewallcustomers");
		 
		  List<Customer> customerdata = customerservice.viewAllCustomers();
		  mv.addObject("customerdata", customerdata);
		  return mv;
	  }

}
