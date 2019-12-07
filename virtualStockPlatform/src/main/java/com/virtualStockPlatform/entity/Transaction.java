package com.virtualStockPlatform.entity;

public class Transaction {
	private int userId;
	private String stockName;
	private double price;
	private int numToBuyOrSell;
	
	public Transaction(int userId, String stockName, double price) {
		this.userId = userId;
		this.stockName = stockName;
		this.price = price;
		this.numToBuyOrSell = 0;
	}
	
	public int getUserId() {
		return userId;
	}
	
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public String getStockName() {
		return stockName;
	}
	
	public void setStockName(String stockName) {
		this.stockName = stockName;
	}
	
	public double getPrice() {
		return price;
	}
	
	public void setPrice(double price) {
		this.price = price;
	}
	
	public int getNumToBuyOrSell() {
		return numToBuyOrSell;
	}
	
	public void setNumToBuyOrSell(int numToBuyOrSell) {
		this.numToBuyOrSell = numToBuyOrSell;
	}
	
	@Override
	public String toString() {
		return "Transaction [userId=" + userId + ", stockName=" + stockName + ", price=" + price + ", numToBuyOrSell="
				+ numToBuyOrSell + "]";
	}
}
