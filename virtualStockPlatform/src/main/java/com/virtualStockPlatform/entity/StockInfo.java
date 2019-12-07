package com.virtualStockPlatform.entity;

import com.fasterxml.jackson.annotation.JsonProperty;

public class StockInfo {
	@JsonProperty("1. Information")
	private String information;
	
	@JsonProperty("2. Symbol")
	private String name;
	
	@JsonProperty("3. Last Refreshed")
	private String lastRefreshedTime;
	
	@JsonProperty("4. Interval")
	private String interval;
	
	@JsonProperty("5. Output Size")
	private String outputSize;
	
	@JsonProperty("6. Time Zone")
	private String timeZone;

	public String getInformation() {
		return information;
	}

	public void setInformation(String information) {
		this.information = information;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastRefreshedTime() {
		return lastRefreshedTime;
	}

	public void setLastRefreshedTime(String lastRefreshedTime) {
		this.lastRefreshedTime = lastRefreshedTime;
	}

	public String getInterval() {
		return interval;
	}

	public void setInterval(String interval) {
		this.interval = interval;
	}

	public String getOutputSize() {
		return outputSize;
	}

	public void setOutputSize(String outputSize) {
		this.outputSize = outputSize;
	}

	public String getTimeZone() {
		return timeZone;
	}

	public void setTimeZone(String timeZone) {
		this.timeZone = timeZone;
	}

	@Override
	public String toString() {
		return "StockInfo [information=" + information + ", name=" + name + ", lastRefreshedTime=" + lastRefreshedTime
				+ ", interval=" + interval + ", outputSize=" + outputSize + ", timeZone=" + timeZone + "]";
	}
}
