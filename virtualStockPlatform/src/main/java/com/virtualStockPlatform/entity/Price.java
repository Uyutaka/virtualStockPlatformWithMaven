package com.virtualStockPlatform.entity;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Price {
	
	@JsonProperty("1. open")
	private double open;
	
	@JsonProperty("2. high")
	private double high;
	
	@JsonProperty("3. low")
	private double low;
	
	@JsonProperty("4. close")
	private double close;
	
	@JsonProperty("5. volume")
	private int volume;

	public double getOpen() {
		return open;
	}

	public void setOpen(double open) {
		this.open = open;
	}

	public double getHigh() {
		return high;
	}

	public void setHigh(double high) {
		this.high = high;
	}

	public double getLow() {
		return low;
	}

	public void setLow(double low) {
		this.low = low;
	}

	public double getClose() {
		return close;
	}

	public void setClose(double close) {
		this.close = close;
	}

	public int getVolume() {
		return volume;
	}

	public void setVolume(int volume) {
		this.volume = volume;
	}

	@Override
	public String toString() {
		return "Price [open=" + open + ", high=" + high + ", low=" + low + ", close=" + close + ", volume=" + volume
				+ "]";
	}
	
	
}
