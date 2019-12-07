package com.virtualStockPlatform.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="property")
public class Property {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int Id;
	
	@Column(name="num_stocks")
	private int numStocks;
	
	@Column(name="stock_name")
	private String stockName;
	
	@Column(name="user_id")
	private int userId;
	
	public Property() {}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public int getNumStocks() {
		return numStocks;
	}

	public void setNumStocks(int numStocks) {
		this.numStocks = numStocks;
	}

	public String getStockName() {
		return stockName;
	}

	public void setStockName(String stockName) {
		this.stockName = stockName;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Property [Id=" + Id + ", numStocks=" + numStocks + ", stockName=" + stockName + ", userId=" + userId
				+ "]";
	}	
}
