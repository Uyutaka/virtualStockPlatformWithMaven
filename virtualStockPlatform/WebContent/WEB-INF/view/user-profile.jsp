<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>User Profile</title>
<!-- reference our style sheet -->
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/user-profile.css" />
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>User profile platform</h2>
		</div>

		<div id="container">
			<div id="content">

				<table class=table>
					<thead class="thead-dark">
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
							<th>Balance</th>
						</tr>
					</thead>
					<c:url var="updateLink" value="/user/showFormForUpdate">
						<c:param name="userId" value="${user.id}" />
					</c:url>
					<c:set var="balance" value="${user.balance}" />
					<thead class="thead-light">
						<tr>
							<td>${user.firstName}</td>
							<td>${user.lastName}</td>
							<td>${user.email}</td>
							<td><fmt:formatNumber value="${balance}" type="currency" />
								</p></td>
						</tr>
					</thead>
				</table>

				<div class="card">
					<table class=table>
						<thead class="thead-dark">
							<tr>
								<th>#</th>
								<th>Stock Name</th>
								<th>Quality</th>
							</tr>
						</thead>

						<thead class="thead-light">
							<!-- loop over and print our users -->
							<c:forEach var="entry" items="${properties}"
								varStatus="status">
								<tr>
									<td>${status.index + 1}</td>
									<td>${entry.stockName}</td>
									<td>${entry.numStocks}</td>
								</tr>
							</c:forEach>

						</thead>
					</table>
				</div>


				<!-- display the update link -->
				<input type="button" value="Edit"
					onclick="window.location.href='${updateLink}'" class="btn btn-dark "
					style="margin-right:30px;" />
				<c:url var="checkLink" value="/user/symbolCheck">
					<c:param name="userId" value="${user.id}" />
				</c:url>
				<input type="button" value="Check to buy/sell stocks"
					onclick="window.location.href='${checkLink}'" class="btn btn-dark" />

			</div>
		</div>
	</div>
</body>
</html>