package com.virtualStockPlatform.entity;

import java.util.LinkedHashMap;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

public class Stock {
	// TODO https://www.baeldung.com/jackson-mapping-dynamic-object

	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonPropertyOrder({
	"Meta Data",
	"Time Series (1min)"
	})

	@JsonProperty("Meta Data")
	private StockInfo metaData;
	
	@JsonProperty("Time Series (1min)")
	private LinkedHashMap<String, Price> timeSeries;
	
	public Stock() {}

	public StockInfo getMetaData() {
		return metaData;
	}

	public void setMetaData(StockInfo metaData) {
		this.metaData = metaData;
	}

	public LinkedHashMap<String, Price> getTimeSeries() {
		return timeSeries;
	}

	public void setTimeSeries(LinkedHashMap<String, Price> timeSeries) {
		this.timeSeries = timeSeries;
	}

	@Override
	public String toString() {
		return "Stock [metaData=" + metaData + ", timeSeries=" + timeSeries + "]";
	}
}
