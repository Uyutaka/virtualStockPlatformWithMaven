<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Edit user</title>
<!-- reference our style sheet -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-user-style.css" />

</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>Virtual Stock Transaction Platform</h2>
		</div>
	</div>


	<div id="container">
		<h3>Save User</h3>
		<form:form action="saveUser" modelAttribute="user" method="POST">
			<!-- need to associate this data with user id -->
			<form:hidden path="id" />
			<form:hidden path="password" />

			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>

					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>
					
					<form:hidden path="balance" />


					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>


				</tbody>
			</table>


		</form:form>

		<div style=""></div>
		<p>
			<c:url var="profile" value="/user/profile">
				<c:param name="userId" value="${tempUser.id}" />
			</c:url>
			
			<a href="${profile}">Back to profile</a>
		</p>
	</div>
</body>
</html>