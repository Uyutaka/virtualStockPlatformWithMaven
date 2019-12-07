<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
<title>Symbol Check</title>
<!-- reference our style sheet -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/symbol-check.css"/>
</head>
<body >

	<div id="wrapper">
		<div id="header">
			<h2>Symbol Check</h2>
		</div>

		<div id="container">
			<div id="content">
				<div class="card text-white mb-3" style="max-width: 30rem;">
				<div class="card-body justify-content-center">
					<form:form action="stockView" modelAttribute="userSymbolCheck" method="POST">
						<form:hidden path="userId" />
						<form:select path="stockName" items="${stocks}"/>
						<input type="submit" value="Check" />
					</form:form>
				</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>