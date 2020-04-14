package com.telusko.demo.model;

import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class Customer {
@Id
	private int Id;
    private String Accountnum;
	private String Name;
	private String Email;
    private String Password;
    private String Aadharnum;
    private String Type;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getAccountnum() {
		    
		    return Accountnum;
		  }
	public void setAccountnum(String accountnum) {
		Accountnum = accountnum;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getAadharnum() {
		return Aadharnum;
	}
	public void setAadharnum(String aadharnum) {
		Aadharnum = aadharnum;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	@Override
	public String toString() {
		return "Customer [Id=" + Id + ", Accountnum=" + Accountnum + ", Name=" + Name + ", Email=" + Email
				+ ", Password=" + Password + ", AadharNum=" + Aadharnum + ", Type=" + Type + "]";
	}
	
	
	
}
