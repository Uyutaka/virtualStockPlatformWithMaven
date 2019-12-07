<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
<title>Warning Page</title>
<!-- reference our style sheet -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/Warning.css"/>
</head>
<body background="${pageContext.request.contextPath}/resources/Warning.jpg">

	<div id="wrapper">
		<div id="container">>
				<div align="center">
		<div id="container">
			<div id="content">
				<div align="center" id="container">
					<div id="content">
						<br><br><br><br><br><br>
						<div class="card mb-3" style="max-width: 50rem;">
					      	<div class="card-body justify-content-center">
								<h1 class="display-1">Error</h1>
								<h1 class="display-4">Invalid Operation Warning</h1>
								<p style="font-family:courier;"><u>Your operation is invalid due 
									to your operation already exceed the balance/number of stocks you have! </u></p>
					        	<button type="button" class="btn-outline-danger btn-sm" onclick="window.location.href='profile'">Back to profile</button>
					      </div>
					 </div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>