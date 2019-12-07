package com.virtualStockPlatform.dao;

import java.io.IOException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.virtualStockPlatform.entity.Property;
import com.virtualStockPlatform.entity.Stock;
import com.virtualStockPlatform.entity.User;

@Repository
public class UserDAOImpl implements UserDAO{

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public List<User> getUsers() {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<User> theQuery = currentSession.createQuery("from User", User.class);
		
		// execute query and get result list
		List<User> users = theQuery.getResultList();
		
		// return the results
		
		return users;
	}


	@Override
	public void saveUser(User theUser) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// save/update the user
		currentSession.saveOrUpdate(theUser);
	}


	@Override
	public User getUser(int theId) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// retrieve/read from db using the primary key
		User theUser = currentSession.get(User.class, theId);
		return theUser;
	}


	@Override
	public void deleteUser(int theId) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// delete object with primary key
		Query theQuery =
				currentSession.createQuery("delete from User where id=:userId");
		theQuery.setParameter("userId", theId);
		theQuery.executeUpdate();
	}


	@Override
	public List<Property> getProperties(int theId) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Property> theQuery = currentSession.createQuery("from Property where userId=:Id", Property.class);
		theQuery.setParameter("Id", theId);
		// execute query and get result list
		List<Property> properties = theQuery.getResultList();
		
		// return the results
		return properties;
	}


	@Override
	public double getSumOfStocks(List<Property> properties) {
		double res = 0.0;
		for (Property property : properties) {
			String stockName = property.getStockName();
			Stock stock = getStockByName(stockName);
			res += stock.getTimeSeries().entrySet().iterator().next().getValue().getClose() * property.getNumStocks();
		}
		return res;
	}
	
	private Stock getStockByName(String name) {
		String text = "";
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> response = restTemplate.getForEntity(
				String.format("https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=%s&interval=1min&apikey=ACPN4KEH4052XAQ6", name),
				String.class);

		if (HttpStatus.OK == response.getStatusCode()) {
			text = response.getBody().toString();
		} else {
			System.out.println("Error");
		}
		ObjectMapper mapper = new ObjectMapper();
		Stock stock = new Stock();
		try {
			// JSON string to Java object
			stock = mapper.readValue(text, Stock.class);
		} catch (IOException e) {
			System.out.println("Test failed.");
			e.printStackTrace();
		}
		return stock;
	}


	@Override
	public double getSumOfStock(Property property) {
		double res = 0.0;
		String stockName = property.getStockName();
		Stock stock = getStockByName(stockName);
		res += stock.getTimeSeries().entrySet().iterator().next().getValue().getClose() * property.getNumStocks();
		return res;
	}


	@Override
	public void buyProperty(User theUser, Property property) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// save/update the user
		currentSession.saveOrUpdate(theUser);
		currentSession.saveOrUpdate(property);
	}


	@Override
	public void sellProperty(User theUser, Property property) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// save/update the user
		currentSession.saveOrUpdate(theUser);
		currentSession.saveOrUpdate(property);	
	}


	@Override
	public Property getProperty(int theId, String stockName) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Property> theQuery = currentSession.createQuery("from Property where userId=:Id and stockName=:Name", Property.class);
		theQuery.setParameter("Id", theId);
		theQuery.setParameter("Name", stockName);
		// execute query and get result list
		Property property = theQuery.uniqueResult();
		
		// return the results
		return property;
	}


	@Override
	public void saveProperty(Property property) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// save/update the property
		currentSession.saveOrUpdate(property);
		
	}


	@Override
	public void deleteProperty(int id) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
	
		// delete object with primary key
		Query theQuery =
				currentSession.createQuery("delete from Property where id=:Id");
		theQuery.setParameter("Id", id);
		theQuery.executeUpdate();
	}
	
}
