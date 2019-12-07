<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<title>Users Ranks</title>
<!-- reference our style sheet -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>User Ranks</h2>
		</div>

		<div id="container">
			<div id="content">

				<!-- add our html table here -->
				<table>
					<tr>
						<th>Rank</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>All Properties</th>
					</tr>

					<!-- loop over and print our users -->
					<c:forEach var="entry" items="${allProperties}" varStatus="status">
						<tr>
							<td>${status.index + 1}</td>
							<td>${entry.user.firstName}</td>
							<td>${entry.user.lastName}</td>
							<td>${entry.user.email}</td>
							<td>${entry.properties}</td>					
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>