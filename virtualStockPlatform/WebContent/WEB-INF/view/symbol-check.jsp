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
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>
<!-- (Optional) Latest compiled and minified JavaScript translation files -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/i18n/defaults-*.min.js"></script>
</head>
<body >

	<div id="wrapper">
		<div id="header">
			<h2>Symbol Check</h2>
		</div>

		<div id="container">
			<div id="content">
				<div class="card text-white mb-3">
				<div class="card-body justify-content-center">
					<form:form action="stockView" modelAttribute="userSymbolCheck" method="POST">
						<form:hidden path="userId" />
						<form:select class="selectpicker show-tick" path="stockName" items="${stocks}" />
						<input type="submit" value="Check" />
					</form:form>
				</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>