<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Log In</title>
<!-- reference our style sheet -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/index.css"/>
	<TITLE>Login</TITLE>
</head>

<body style="text-align: center" background="${pageContext.request.contextPath}/resources/Login-Wallpaper.jpg">
	<nav class="navigation-header"></nav>
	      <nav class="navbar navbar-light bg-dark">
	      <h2><font color="white">User Login platform</font></h2>
	    </a>
	    </nav>

	<br><br><br>
	<div id="wrapper">
			<div id="container">	
					<div class="card text-white mb-3" style="max-width: 30rem;">
					<div class="card-body justify-content-center">	
					       <div id = "PageTitle">
								<h2 class="text-center">
									Please Login
								</h2>
							</div>
					        <form:form action="toLogin" modelAttribute="login" method="POST">
					          <div class="email">
					          	<h4>Email</h4>
					            <form:input class="input-box" id="UseremailInput" type="email" style="border-radius: 8px;"
					            	placeholder="Enter your email" path="email"/>
					          </div>
					          
					          <div class="password">
					          	<h4>Password</h4>
					            <form:input type="password" id="PasswordInput" name="password" style="border-radius: 8px;"
					            	placeholder="Enter your password" path="password"/>
					          </div>
							 	<br>
								<input type="submit" value="Log In" class="btn btn-success" />
					
					          <br><br>
					
					          <h5 class="sub-header">Don't have an account?</h5>
					          	<a href="${pageContext.request.contextPath}/user/toSignup">Click here</a>
					          </form:form>
					          	</div>
					  </div>
			 </div>
	 </div>
</body>
</html>