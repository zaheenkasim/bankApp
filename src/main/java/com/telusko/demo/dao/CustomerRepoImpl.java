package com.telusko.demo.dao;



import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import javax.validation.OverridesAttribute;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jdbc.repository.query.Query;
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
 		String sql="select * from user where AccountNum=? and Password=?";
 		System.out.print(sql);
 		Customer c=jdbcTemplate.queryForObject(sql, new Object[] {customer.getEmail(),customer.getPassword()}, new RowMapper<Customer>() {

 			
 			
 			@Override
 			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
 				Customer p=new Customer();
 				p.setEmail(rs.getString(2));
 				p.setPassword(rs.getString(5));
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
 		List<Customer> list = jdbcTemplate.query("select * from user", new RowMapper<Customer>() {
   
 			@Override
 			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
 				Customer p = new Customer();
 				
 				p.setId(rs.getInt(1));
 				p.setAccountnum(rs.getString(2));
 				p.setName(rs.getString(3));
 				p.setEmail(rs.getString(4));
 				p.setPassword(rs.getString(5));
 				p.setAadharnum(rs.getString(6));
 				p.setType(rs.getString(7));
 				p.setMoney(rs.getFloat(8));
 				
 				
 				return p;
 			}
 	
 			
 		
 		});
 		
 		return list;
     
     
     
}

	@Override
	public boolean debit(Customer money) {
		// TODO Auto-generated method stub
		System.out.println("zaheenkasim");
		
		
		try {
			
			//Customer c=jdbcTemplate.queryForObject(mn, new Object[] {money.getAccountnum()}, new RowMapper<Customer>()
				
			
			
			
			String sql = "update user set savings=(savings-?) where AccountNum=?";
			int i=jdbcTemplate.update(sql,money.getMoney(), money.getAccountnum());
		
			if(i==0)
			{
				return false;
			}
			return true;	
		
		}
		catch(Exception e) {
			
			
			return false;
			
		}
}

	@Override
	public boolean register(Customer customer) {
		// TODO Auto-generated method stub
		try {
			String sql = "insert into user(AccountNum, Name, Email, Password, AadharNum, Type) values(?,?,?,?,?,?);";
			jdbcTemplate.update(sql, customer.getAccountnum(), customer.getName(), customer.getEmail(),customer.getPassword(),customer.getAadharnum(),customer.getType());
			
			return true;	
			
			}
			catch(Exception e) {
				
				return false;
				
			}
			
		
	}
		
	}
	
     
