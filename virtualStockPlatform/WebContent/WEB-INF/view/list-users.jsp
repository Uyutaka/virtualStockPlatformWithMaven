<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<title>List Users</title>
<!-- reference our style sheet -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>URM - User Relationship Manager</h2>
		</div>

		<div id="container">
			<div id="content">

				<!-- put new button: Add Customer -->
				<input type="button" value="Add User"
					onclick="window.location.href='showFormForAdd'; return false;"
					class="add-button" />

				<!-- add our html table here -->
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Balance</th>
						<th>Sum Of Stocks</th>

						<th>Action</th>
					</tr>

					<!-- loop over and print our users -->
					<c:forEach var="tempUser" items="${users}" varStatus="status">
						<!-- construct an "update" link with user id -->
						<c:url var="updateLink" value="/user/showFormForUpdate">
							<c:param name="userId" value="${tempUser.id}" />
						</c:url>

						<!-- construct an "delete" link with user id -->
						<c:url var="deleteLink" value="/user/delete">
							<c:param name="userId" value="${tempUser.id}" />
						</c:url>
						<tr>
							<td>${tempUser.firstName}</td>
							<td>${tempUser.lastName}</td>
							<td>${tempUser.email}</td>
							<td>${tempUser.balance}</td>
							<td>${sumOfStocks[status.index]}</td>
							<!-- display the update link -->
							<td><a href="${updateLink}">Update</a> | <a
								href="${deleteLink}"
								onclick="if(!(confirm('Are you sure you want to delete this user?'))) return false">Delete</a></td>
						</tr>
					</c:forEach>

				</table>
			</div>
		</div>
	</div>
</body>
</html>