<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Edit user</title>
<!-- reference our style sheet -->
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-user-style.css" />

</head>
<body>
	<nav class="navigation-header"></nav>
	      <nav class="navbar navbar-light bg-dark">
	      <h2><font color="white">User Edit platform</font></h2>
   		  </nav>
	<div id="wrapper">
	<div id="container">
		<form:form action="signup" modelAttribute="user" method="POST">
			<!-- need to associate this data with user id -->
			<form:hidden path="id" />

			<table>
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
					
					
					<tr>
						<td><label>Password:</label></td>
						<td><form:input path="password" /></td>
					</tr>
					
					<form:hidden path="balance" />
			</table>
			<input type="submit" value="Save" class="save" />
		</form:form>
	</div>
	</div>
</body>
</html>