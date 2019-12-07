package com.virtualStockPlatform.entity;

public class Pair {
	private User user;
	
	private double properties;
	
	public Pair(User user, double properties) {
		this.user = user;
		this.properties = properties;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public double getProperties() {
		return properties;
	}

	public void setProperties(double properties) {
		this.properties = properties;
	}

	@Override
	public String toString() {
		return "Pair [user=" + user + ", properties=" + properties + "]";
	}
}
