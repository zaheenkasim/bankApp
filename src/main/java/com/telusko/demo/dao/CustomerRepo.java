package com.telusko.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.jdbc.core.JdbcTemplate;

import com.telusko.demo.model.Customer;

public interface CustomerRepo 
{
	public boolean login(Customer customer);
	
	public boolean debit(Customer money);
	
	public Iterable<Customer> findAll();
	
	public boolean register(Customer customer);
}
