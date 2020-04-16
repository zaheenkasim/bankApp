package com.telusko.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.telusko.demo.model.Customer;

@Service
public interface CustomerService {
	public boolean login(Customer customer);
	
	public boolean debit(Customer money);
	
	public Iterable<Customer> findAll();
	}
