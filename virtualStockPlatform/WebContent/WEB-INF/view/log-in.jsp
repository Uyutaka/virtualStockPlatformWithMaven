<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<title>Log In</title>
<!-- reference our style sheet -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link type="text/css" type="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css"/>
	<TITLE>Login</TITLE>
</head>

<body background="${pageContext.request.contextPath}/resources/Login-Wallpaper.jpg">
	<nav class="navigation-header"></nav>
	      <nav class="navbar navbar-light bg-dark">
	      <h2><font color="white">User Login platform</font></h2>
	    </a>
	    </nav>

	<br><br><br>
	<div id="wrapper">
		<div id="header">
			<div align="center" id="container">
				<div id="content">
					<form:form action="checkUser" modelAttribute="user" method="POST">
					<div class="card text-white mb-3" style="max-width: 30rem;"">
					      <div class="card-body justify-content-center">
					        <form class="form-login text-center">
					
					          <h3 class="sub-header">Please Login</h3>
					        </br>
					          <div class="form-group">
					            <input class="input-box" id="UseremailInput" type="email" style="border-radius: 8px;"
					            	name="email" placeholder="Enter your email" path="email">
					          </div>
					          <div class="form-group">
					            <input type="password" id="PasswordInput" name="password" style="border-radius: 8px;"
					            	placeholder="Enter your password" path="password">
					          </div>
					          <br>
					          <input type="submit" class="btn btn-success" >Login</button>
					
					          <br><br>
					
					          <h5 class="sub-header">Don't have an account?</h5>
					          	<<a href="${pageContext.request.contextPath}/signup">Click here</a>>
					
					        </form>
					  </form:form>
					      </div>
					 </div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>