<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>Users Ranks</title>
<!-- reference our style sheet -->
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/users-rank.css" />

</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>User Ranks</h2>
		</div>

		<div id="container">
			<div id="content">

				<!-- add our html table here -->
				<table class="table">
					<thead class="thead-dark">
					<tr>
						<th>Rank</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>All Properties</th>
					</tr>
					</thead>

					<!-- loop over and print our users -->
					<c:forEach var="entry" items="${allProperties}" varStatus="status">
					<c:set var="properties" value="${entry.properties}" />
					<thead class="thead-light">
						<tr>
							<td>${status.index + 1}</td>
							<td>${entry.user.firstName}</td>
							<td>${entry.user.lastName}</td>
							<td>${entry.user.email}</td>
							<td><fmt:formatNumber value="${properties}" type="currency" /></td>					
						</tr>
					</thead>
					</c:forEach>
				</table>
				<c:url var="profileWithId" value="/user/profileWithID">
					<c:param name="userId" value="${id}" />
				</c:url>
				<input type="button" value="Back to profile"
					onclick="window.location.href='${profileWithId}'" class="btn btn-dark" />
			</div>
		</div>
	</div>
</body>
</html>