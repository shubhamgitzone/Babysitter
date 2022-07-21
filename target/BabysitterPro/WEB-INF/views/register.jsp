<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<style>
html {
	font-family: "helvetica neue", "Arial", sans-serif;
}

body {
	background-color: bisque;
}

form {
	margin-top: 50px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 600px;
	margin: auto;
	text-align: center;
	font-family: arial;
	background-color: white;
}

h2 {
	text-align: center;
	font-family: cursive;
	font-size: 30px;
	background-color: cornflowerblue;
}

#loginButton {
	border-radius: 6px;
	padding: 6px 16px;
	background-color: darksalmon;
	text-decoration-style: solid;
	text-align: center;
	width: 20%;
}

#registerButton {
	border-radius: 6px;
	padding: 6px 16px;
	background-color: darksalmon;
	text-decoration-style: solid;
	text-align: center;
	width: 20%;
}

input {
	width: 100%;
	padding: 8px 16px;
	width: 50%;
	box-sizing: border-box;
}

::placeholder {
	color: lightgrey;
	font-size: 20px;
	font-family: cursive;
	text-align: start;
}
</style>
<body>
	<form action="registerUser" method="post">
		<a href="home.jsp"><img
			src="https://image.flaticon.com/icons/svg/2/2144.svg" width="23px"
			height="23px"></a>
		<h2>Registration</h2>
		
		<input type="text" name="firstName" placeholder="First Name" required>
		<br> <br> <input type="text" name="lastName"
			placeholder="Last Name" required> <br> <br> <input
			type="email" name="email" placeholder="Email" required> <br>
		<br> <input type="number" name="phoneNumber"
			placeholder="Phone Number" required> <br> <br> <input
			type="password" name="password" placeholder="Password" required>
		<br> <br> <input id="registerButton" type="submit"
			name="register" value="Register"> <br> <br>
		<p>By clicking Register, you agree to our Terms, Data Policy and
			Cookie Policy.</p>
		<p>
			<a href="loginPage" id="loginButton">Login</a>
		</p>
		<br>
	</form>


	</form>
	</div>
</body>
</html>