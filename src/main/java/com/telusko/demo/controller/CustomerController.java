	package com.telusko.demo.controller;

import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.telusko.demo.dao.CustomerRepo;
import com.telusko.demo.model.Customer;
import com.telusko.demo.service.CustomerService;

@Controller
public class CustomerController
{
	@Autowired
	private CustomerRepo repo;
	
	@Autowired
    private CustomerService customerService;
//	@GetMapping("/register")
//	public String Register()
//	{
//		return "Register.jsp";
//	}
//	@PostMapping("/register")
//	public String addCustomer(Customer customer)
//	{   
//		repo.save(customer);
//		return "Login.jsp";
//	}

//	@GetMapping("/Login")
//	public String Login()
//	{
//		return "Login.jsp";
//	}
//	
    
    @RequestMapping("/")
    public String Login()
	{
		return "Login";
    }
   
    @GetMapping("/Register")
    public ModelAndView Register()
    {
    	ModelAndView model = new ModelAndView();
    	Iterable<Customer> customerList = customerService.findAll();
    	model.addObject("CustomerList", customerList);
    	model.setViewName("Register");
    	return model;
    	
    }
    
    
    @PostMapping("/Register")
	public ModelAndView vehicleRegister(Customer customer) 
	{	
		System.out.println();
		this.customerService.register(customer);	
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Register");
		return mv;
	}
    
	/*
	 * @GetMapping("/Home") public ModelAndView signinPage1() { ModelAndView mv =
	 * new ModelAndView(); mv.setViewName("Home"); return mv; }
	 */
	@PostMapping("/Home")
	public ModelAndView vuser(Customer customer) 
	{
		
		ModelAndView mv = new ModelAndView();
		
		try {
			
			boolean c=this.customerService.login(customer);
			System.out.println(c);
			if(c) {
				mv.setViewName("Home");
			} else {
				mv.addObject("Enter Valid Credentials");
				mv.setViewName("Login");
			}
			
			return mv;
		} catch(Exception e) {
			System.out.println("zaheen");
			mv.setViewName("Login");
		}	
		return  mv;
	}



@GetMapping("/Home")
public ModelAndView homePage() 
{
	ModelAndView model = new ModelAndView();
	Iterable<Customer> customerList = customerService.findAll();
	model.addObject("CustomerList", customerList);
	model.setViewName("Home");
	return model;
	
}


@GetMapping("/Debit")
public ModelAndView debitPage() 
{
	ModelAndView model = new ModelAndView();
	Iterable<Customer> customerList = customerService.findAll();
	model.addObject("CustomerList", customerList);
	model.setViewName("Debit");
	return model;
	
}

@PostMapping("/Debit")
public ModelAndView sendMoney(Customer money) {
	
	boolean c=this.customerService.debit(money);
	ModelAndView mv = new ModelAndView();
	mv.setViewName("Debit");
	return mv;
		
	
}
	/*
	 * @GetMapping("/Edit") public ModelAndView editPage() { ModelAndView model= new
	 * ModelAndView(); Iterable<Customer> customerList= customerService.findAll();
	 * model.addObject("CustomerList", customerList); model.setViewName("Edit");
	 * return model; }
	 */



@GetMapping("/Edit")
public ModelAndView editContact(HttpServletRequest request) {
    String accountnum = request.getParameter("Accountnum");
    Customer contact = CustomerRepo.get(accountnum);
    ModelAndView model = new ModelAndView("Edit");
    model.addObject("contact", contact);
 
    return model;
}

@PostMapping("/Edit")
public ModelAndView editPage(Customer customer)
{
	boolean c=this.customerService.edit(customer);
	ModelAndView mv= new ModelAndView();
	mv.setViewName("Edit");
	return mv;
	}

}
	 
	 