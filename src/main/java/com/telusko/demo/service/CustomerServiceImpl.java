package com.telusko.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.telusko.demo.dao.CustomerRepo;
import com.telusko.demo.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerRepo customerRepo;

	public void setCustomerRepo(CustomerRepo customerRepo) {
		this.customerRepo = customerRepo;
	}

	@Override
	public boolean login(Customer customer) {
		// TODO Auto-generated method stub
		return customerRepo.login(customer);
	}
	
	@Override
	public Iterable<Customer> findAll() {
		// TODO Auto-generated method stub
		return customerRepo.findAll();
	}

	@Override
	public boolean debit(Customer money) {
		// TODO Auto-generated method stub
		return false;
	}

}
