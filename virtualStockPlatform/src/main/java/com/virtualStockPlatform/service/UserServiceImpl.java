package com.virtualStockPlatform.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.virtualStockPlatform.dao.UserDAO;
import com.virtualStockPlatform.entity.Property;
import com.virtualStockPlatform.entity.User;

@Service
public class UserServiceImpl implements UserService {

	// need to inject user dao
	@Autowired
	private UserDAO userDAO;
	
	@Override
	@Transactional
	public List<User> getUsers() {
		return userDAO.getUsers();
	}

	@Override
	@Transactional
	public void saveUser(User theUser) {
		userDAO.saveUser(theUser);
	}

	@Override
	@Transactional
	public User getUser(int theId) {
		return userDAO.getUser(theId);
	}

	@Override
	@Transactional
	public void deleteUser(int theId) {
		userDAO.deleteUser(theId);
	}

	@Override
	@Transactional
	public List<Property> getProperties(int theId) {
		return userDAO.getProperties(theId);
	}
	
	@Override
	@Transactional
	public double getSumOfStocks(List<Property> properties) {
		return userDAO.getSumOfStocks(properties);
	}

	@Override
	@Transactional
	public double getSumOfStock(Property property) {
		return userDAO.getSumOfStock(property);
	}

	@Override
	@Transactional
	public void buyProperty(User theUser, Property property) {
		userDAO.buyProperty(theUser, property);
	}

	@Override
	@Transactional
	public void sellProperty(User theUser, Property property) {
		userDAO.sellProperty(theUser, property);
	}

	@Override
	@Transactional
	public Property getProperty(int theId, String stockName) {
		return userDAO.getProperty(theId, stockName);
	}

	@Override
	@Transactional
	public void saveProperty(Property property) {
		userDAO.saveProperty(property);
		
	}

	@Override
	@Transactional
	public void deleteProperty(int id) {
		userDAO.deleteProperty(id);	
	}

	@Override
	@Transactional
	public User getUserByEmail(String email) {
		return userDAO.getUserByEmail(email);
	}
}
