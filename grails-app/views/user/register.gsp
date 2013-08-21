<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Register a new user</title>
	</head>
	<body id="body">
		<div class="container">
			<h1>Registration</h1>
			<p>Complete the form below to creat an account!</p>
			<g:hashErrors bean="${user}">
				<div class="errors">
					<g:renderErrors bean="${user}"></g:renderErrors>
				</div>
			</g:hashErrors>
		</div>		
	</body>
</html>