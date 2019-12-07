package com.virtualStockPlatform.api;

import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.virtualStockPlatform.entity.Stock;

public class Api {
	private String[] SYMBOLS = {"GOOG", "AMZN", "NVDA"};
	
	// Return symbol's stock price
	// Return 0 when an error happens
	public double getPrice(String companySymbol) {
		String text = getJson(companySymbol);
		return extractPrice(text);
	}
	
	// Return HashMap (key: symbol, value: price)
	public HashMap<String, Double> getAllPrices() {
		HashMap<String, Double> priceMap = new HashMap<String, Double>();
        for (int i = 0; i < SYMBOLS.length; i++) {
    		String text = getJson(SYMBOLS[i]);
    		Double price = extractPrice(text);
    		priceMap.put(SYMBOLS[i], price);
        }
		return priceMap;
	}
	
	// Check if the result of api has error (does it include 0)
	public boolean isError(HashMap<String, Double> priceMap) {
		boolean result = false;
		for (String key: priceMap.keySet()) {
		    if(priceMap.get(key) == 0) {
		    	result = true;
		    	break;
		    }
		}
		return result;
	}

	private String getJson(String companySymbol) {
		String text = "";
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> response = restTemplate
				.getForEntity("https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=" + companySymbol
						+ "&interval=1min&apikey=ACPN4KEH4052XAQ6", String.class);

		if (HttpStatus.OK == response.getStatusCode()) {
			text = response.getBody().toString();
		} else {
			System.out.println("API Error");
		}

		return text;
	}

	// extract open price
	// When error happens, return 0
	// TODO
	// 1) Add parameters (Success, error handlers)
	private double extractPrice(String jsonInString) {
		ObjectMapper mapper = new ObjectMapper();
		try {
			// JSON string to Java object
			Stock stock = mapper.readValue(jsonInString, Stock.class);
			String stockName = stock.getMetaData().getName();
			System.out.println("stockName is : " + stockName);
			System.out.println(stock.getTimeSeries().entrySet().iterator().next());

			String element = stock.getTimeSeries().entrySet().iterator().next().toString();
			Pattern p = Pattern.compile("\\d+(?:\\.\\d+)");
			Matcher m = p.matcher(element);
			m.find();
			double openPrice = Double.parseDouble(m.group());
			return openPrice;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
}
