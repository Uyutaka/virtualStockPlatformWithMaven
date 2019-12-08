<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html>
<head>
<title>Stock View</title>
<!-- reference our style sheet -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/stock-view.css"/>
</head>

<body>
	<nav class="navigation-header"></nav>
	      <nav class="navbar navbar-light bg-dark">
	      <h2><font color="white">Stock view platform</font></h2>
	    <a href="${pageContext.request.contextPath}/user/login" style="color: white">Log Out</a>
	    </nav>
		<br><br><br>
		<div id="container">
			<div id="content">
				<div class="card">
					<div class="card-body justify-content-center">
					<c:set var = "volume" value="${price.volume}" />
					<c:set var = "price" value="${price.close}" />
					<c:set var = "quantity" value="${property.numStocks}" />
            <div id="leftPart">
              			<p><font face="verdana" size="4" color="white">1. Stock Name</font></p>
              				<p>${userSymbolCheck.stockName}</p>
							<hr><br>
					    <p><font face="verdana" size="4" color="white">2. Current Price</font></p>
              				 <p><fmt:formatNumber value = "${price}" 
         							type = "currency"/></p>
							 <hr><br>
						<p><font face="verdana" size="4" color="white">3. Quantity Hold</font></p>
              				 <p><fmt:formatNumber value = "${quantity}" 
         							type = "number"/></p>
							 <hr><br>
					    <p><font face="verdana" size="4" color="white">4. Stock Volume</font></p>
              				<fmt:formatNumber value = "${volume}" 
         							type = "number"/>
              				<hr><br>
              				
              			<c:url var="buy" value="/user/buyStock">
							<c:param name="userId" value="${userSymbolCheck.userId}" />
							<c:param name="stockName" value="${userSymbolCheck.stockName}" />
						</c:url>

						<!-- construct an "delete" link with user id -->
						<c:url var="sell" value="/user/sellStock">
							<c:param name="userId" value="${userSymbolCheck.userId}" />
							<c:param name="stockName" value="${userSymbolCheck.stockName}" />
						</c:url>
              			
              			<button type="button" style="margin-right:30px;" class="btn btn-outline-success btn-lg" 
              				onclick="window.location.href = '${buy}'">Buy</button>
              			
              			<button type="button" class="btn btn-outline-danger btn-lg" 
              				onclick="window.location.href = '${sell}'">Sell</button>
            </div>
					</div>
				</div>
    	</div>
    
    
    <div id="rightPart">
        
      <!-- TradingView Widget BEGIN -->
		  <div class="tradingview-widget-container">
		  <div id="tradingview_12e94"></div>
		  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/symbols/NASDAQ-AMZN/" rel="noopener" target="_blank"><span class="blue-text">AAPL Chart</span></a> by TradingView</div>
		  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
		  <script type="text/javascript">
  new TradingView.widget(
  {
  "width": 850,
  "height": 617,
  "symbol": "NASDAQ:${userSymbolCheck.stockName}",
  "interval": "D",
  "timezone": "Etc/UTC",
  "theme": "Dark",
  "style": "0",
  "locale": "en",
  "toolbar_bg": "#f1f3f6",
  "enable_publishing": false,
  "hide_top_toolbar": true,
  "allow_symbol_change": true,
  "container_id": "tradingview_12e94"
}
  );
  </script>
</div>
<!-- TradingView Widget END -->
    </div>
    </div>
</body>

</html>