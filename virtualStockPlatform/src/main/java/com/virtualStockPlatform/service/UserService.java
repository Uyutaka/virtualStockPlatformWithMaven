package com.virtualStockPlatform.service;

import java.util.List;

import com.virtualStockPlatform.entity.Property;
import com.virtualStockPlatform.entity.User;

public interface UserService {
	public List<User> getUsers();

	public void saveUser(User theUser);

	public User getUser(int theId);

	public void deleteUser(int theId);
	
	public void saveProperty(Property property);
	
	public void deleteProperty(int id);
	
	public Property getProperty(int theId, String stockName);
	
	public List<Property> getProperties(int theId);
	
	public double getSumOfStocks(List<Property> properties);
	
	public double getSumOfStock(Property property);
	
	public void buyProperty(User theUser, Property property);
	
	public void sellProperty(User theUser, Property property);
}
