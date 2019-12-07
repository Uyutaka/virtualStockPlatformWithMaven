<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Account Creation</title>
<!-- reference our style sheet -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"/>

</head>
<body style="text-align: center" background="../resources/Login-Wallpaper.jpg">
		<nav class="navigation-header"></nav>
	      <nav class="navbar navbar-light bg-dark">
	      <h2><font color="white">Account Creation Platform</font></h2>
	    </a>
	    </nav>
	    
	    <br><br><br>
	<div id="wrapper">
			<div id="container">
				<div class="card text-white mb-3" style="max-width: 30rem;">
				<div class="card-body justify-content-center">
					<div id = "PageTitle">
					<h2 class="text-center">
						Account Creation
					</h2>
					</div>
					<form:form action="saveUser" modelAttribute="user" method="POST">
					<!-- need to associate this data with user id -->
					<form:hidden path="id" />
			
						<div class="firstname">
						<h4>Firstname</h4>
						<input type="firstname" name="Firstname" placeholder="Enter your firstname" path="firstName" style="width: 260px">
						</div>
						
						<div class="lastname">
						<h4>Lastname</h4>
						<input type="lastname" name="Lastname" placeholder="Enter your lastname" path="lastName" style="width: 260px">
						</div>
	
						<div class="email">
						<h4>Email</h4>
						<input type="email" name="Email" placeholder="Enter your email" path="email" style="width: 260px">
						</div>
	
						<div class="password">
						<h4>Password</h4>
						<input type="password" name="Password" placeholder="Enter your password" path = "password" style="width: 260px">
						</div>
				
						<div class="confirm-password">
						<h4>Confirm Password</h4>
						<input type="password" name="RePassword" placeholder="Confirm your password" path = "repassword"  style="width: 260px">
						</div>
						<br>
						
						<div class="confirm-btn">
						<button type="submit" class="btn btn-success" id = "CreationButton" style="width: 260px">Create</button>
						</div>
						<br>
						
						<div class="signin">
						Already have an account?
						<a href="${pageContext.request.contextPath}/login">Sing in</a>
						</div>
						<br>
					    
			 </div>
			</div>
		</form:form>
		</p>
	</div>
</body>
</html>