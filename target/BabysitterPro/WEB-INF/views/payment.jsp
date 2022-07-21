<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>

<style>
html {
	font-family: "helvetica neue", "Arial", sans-serif;
}

body {
	margin: 0;
}

.cName {
	width: 100%;
	background-color: activeborder;
	margin: auto;
}

.pay {
	text-align: center;
	border-spacing: 20px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 500px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.pay input {
	width: 100%;
	padding: 8px 16px;
	width: 50%;
	box-sizing: border-box;
	margin-left: 40px;
}

::placeholder {
	color: lightgrey;
	font-size: 20px;
	font-family: cursive;
	text-align: start;
}

.pay  h2 {
	font-family: sans-serif;
	font-size: 27px;
	color: teal;
	text-align: center;
}

.btn {
	background-color: #4CAF50;
	color: white;
	padding: 12px;
	margin: 10px 0;
	border: none;
	border-radius: 3px;
	font-size: 17px;
}

.connect {
	text-align: center;
	width: 100%;
	background-color: cornsilk;
	height: 26px;
}

#headertags {
	padding: 15px 10px 10px 10px;
	font-size: 20px;
	overflow: hidden;
	background-color: cornsilk;
	border-spacing: 2px;
	padding-top: 0px;
}

#leftheader {
	float: right;
	word-spacing: 50px;
	margin-right: 40px;
}

#icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}
</style>
</head>
<body>
	<div id="headertags">
		<a href="dashPage"><b>BabySitter </b><img
			src="https://www.clipartkey.com/mpngs/m/131-1311865_babysitting-icon-nanny-babysitter-icon-png.png"
			width="20px" height="20px" /></a> <span id="leftheader"> <a
			href="aboutPage">About</a> <a href="contactPage">Contact_Us</a>
		</span>
	</div>

	<div class="pay">
		<form action="userPaid" method="post">
			<h2>Payment</h2>
			<label><b>All Cards Accepted</b></label> <br>
			<br> <label for="nameoncard">Name : </label> <input type="text"
				name="nameoncard" id="nameoncard" placeholder="Name On Card"><br>
			<br> <label for="creditno">Credit/Debit Card number : </label> <input
				type="number" id="creditno" name="creditno"
				placeholder="Credit/Debit Card Number"><br>
			<br> <label for="expiry">Expiry Date : </label> <input
				type="month" id="expiry" name="expiry"
				placeholder="Expiry Month & year"><br>
			<br> <label for="cvv">CVV : </label> <input type="password"
				id="cvv" name="cvv" placeholder="CVV"><br>
			<br> <a href="success.jsp"><input type="submit"
				value="Continue to checkout" class="btn"></a>
		</form>
	</div>
	<br>
	<br>

	<div class="connect">
		<div class="connect">
			<a href="termsandconditionPage">Terms and Conditions</a>

		</div>
		<a href="dashPage"><img
			src="https://thumbs.dreamstime.com/b/babysitter-retro-font-occupation-vector-babysitter-retro-font-107093621.jpg"
			height="100px" width="180px"> </a>
	</div>
</body>
</html>