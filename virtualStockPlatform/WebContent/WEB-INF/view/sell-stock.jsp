<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html>
<head>
<!-- reference our style sheet -->
<!-- Bootstrap CSS -->
<title>User Selling</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/sell-stock.css"/>
</head>
<body>
	<nav class="navigation-header"></nav>
	      <nav class="navbar navbar-light bg-dark">
	      <h2><font color="white">Selling Stock platform</font></h2>
	      <c:url var="profileWithId" value="/user/profileWithID">
			<c:param name="userId" value="${user.id}" />
		</c:url>
		<a href="${profileWithId}" style="color: white">Back to Profile</a>
	      <a href="${pageContext.request.contextPath}/user/login" style="color: white">Log out</a>
	    </nav>
	    <br><br>
	<div class="wrapper">
		<div id="container">
			<div id="content">
			<form:form action="sell" modelAttribute="transaction" method="POST">
				<form:hidden path="userId" />
				<form:hidden path="price"/>
				<form:hidden path="stockName" />
				<table class=table>
					 <thead class="thead-dark">
						<tr>
							<th>Stock Name</th>
							<th>Quantity Hold</th>
							<th>Current Price</th>
							<th>Balance</th>
					   </tr>
					</thead>
							<c:set var = "balance" value="${user.balance}" />
							<c:set var = "price" value="${price.close}" />
							<thead class="thead-light">
							<tr>
								<td>${property.stockName}</td>
								<td>${property.numStocks}</td>
								<td><fmt:formatNumber value = "${price}" 
         							type = "currency"/></td>
								<td><fmt:formatNumber value = "${balance}" 
         							type = "currency"/></td>
							</tr>
							</thead>
					</table>
							<!-- display the balance text use request.getParameter("SellQuantity")-->	
							<font face="verdana" size="4">Sell Quantity: (#limit: <fmt:formatNumber type = "number" 
         						maxFractionDigits="0" value = "${property.numStocks}" />)</font> <form:input size="8" maxlength="4"
         							path="numToBuyOrSell" />
							<!-- display the update link -->
							<input type="submit" value="Order" class="btn btn-dark" style="margin-left:30px;" />
				</form:form>			
			</div>
		</div>
	</div>
</body>
</html>