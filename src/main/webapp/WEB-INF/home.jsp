<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
body {
	background-color: bisque;
}

h1 {
	margin-top: 80px;
	text-align: center;
	font-family: cursive;
	color: white;
	background-color: cornflowerblue;
}

#header {
	text-align: center;
	margin-top: 30px;
}

#buttons {
	text-align: center;
	padding-top: 40px;
}

input {
	border-radius: 6px;
	padding: 6px 16px;
	background-color: darksalmon;
	text-decoration-style: solid;
	text-align: center;
}

#view {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 300px;
	margin: auto;
	text-align: center;
	font-family: arial;
	background-color: white;
}
</style>
</head>
<body>

	<div id="view">
		<h1>
			<b>Welcome To</b>
		</h1>
		<div id="header">
			<a href="#"><img
				src="https://thumbs.dreamstime.com/b/babysitter-retro-font-occupation-vector-babysitter-retro-font-107093621.jpg"
				height="100px" width="180px"></a>
		</div>
		<div id="buttons">
			<a href="registrationPage"><input type="button" name="register"
				value="Register"></a> <a href="loginPage"><input
				type="button" name="login" value="Login"></a>
			<hr>
		</div>

	</div>
</body>
</html>
