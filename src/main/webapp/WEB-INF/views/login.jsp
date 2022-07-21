<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
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
	max-width: 400px;
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

input {
	width: 100%;
	padding: 8px 16px;
	box-sizing: border-box;
	width: 50%;
}

::placeholder {
	color: lightgrey;
	font-size: 20px;
	font-family: cursive;
	text-align: start;
}
</style>
<body>
	<form action="loginUser" method="post">
		<br><a href="home.jsp"><img
			src="https://image.flaticon.com/icons/svg/2/2144.svg" width="23px"
			height="23px"></a>

		<h2>Login</h2>
		<input type="number" name="phoneNumber" placeHolder="Username"
			required /> <br>
		<br>
		<input type="text" name="password" placeHolder="Password" required />
		<br>
		<br>
		<input id="loginButton" type="submit" name="login" value="Login" />
	</form>
</body>
</html>
