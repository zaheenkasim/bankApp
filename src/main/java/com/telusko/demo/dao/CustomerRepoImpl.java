package com.telusko.demo.dao;



import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import javax.validation.OverridesAttribute;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.sun.xml.bind.annotation.OverrideAnnotationOf;
import com.telusko.demo.model.Customer;

@Repository
public  class CustomerRepoImpl implements CustomerRepo  {
	
     @Autowired
     private JdbcTemplate jdbcTemplate;
     public boolean login(Customer customer) {
 		// TODO Auto-generated method stub
 		String sql="select * from user where Email=? and Password=?";
 		System.out.print(sql);
 		Customer c=jdbcTemplate.queryForObject(sql, new Object[] {customer.getEmail(),customer.getPassword()}, new RowMapper<Customer>() {

 			
 			
 			@Override
 			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
 				Customer p=new Customer();
 				p.setEmail(rs.getString(1));
 				p.setPassword(rs.getString(2));
 				return p;
 			}
 			
 		});
 		if(c==null)
 		{
 			return false;
 		}
 		
 		return true;
     }

     @Override
     public Iterable<Customer>findAll() {
 		
    	 System.out.println("kasim");
 		List<Customer> list = jdbcTemplate.query("SELECT * from user", new RowMapper<Customer>() {
   
 			@Override
 			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
 				Customer p = new Customer();
 				
 				
 				p.setAccountnum(rs.getString(3));
 				p.setName(rs.getString(4));
 				
 				return p;
 			}
 	
 		
 		
 		});
 		
 		return list;
     
     
     
}
     }
