package com.virtualStockPlatform.entity;

public class UserSymbolCheck {
	private int userId;
	
	private String stockName;
	
	public UserSymbolCheck(int userId) {
		this.userId = userId;
		this.stockName = "";
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

	@Override
	public String toString() {
		return "UserSymbolCheck [userId=" + userId + ", stockName=" + stockName + "]";
	}
}
