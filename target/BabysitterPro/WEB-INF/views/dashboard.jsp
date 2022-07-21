<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
</head>
<style>
html {
	font-family: "helvetica neue", "Arial", sans-serif;
}

body {
	background-image:
		url('https://t3.ftcdn.net/jpg/03/70/33/92/240_F_370339238_gZ5CGcEDLMQUj1iA8noYUWYL46NaG7jn.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: contain;
	background-blend-mode: lighten;
	margin: 0;
}

.mysitter {
	width: 100%;
	background-color: aliceblue;
	margin: auto;
}

.mysitter p {
	width: 60%;
	margin-left: auto;
	margin-right: auto;
	margin-top: 0;
	font-size: 2.0;
	font-weight: 400;
	color: maroon;
	text-align: center;
	font-style: oblique;
}

.mysitter table {
	background-color: infobackground;
	margin-left: 28px;
	margin-right: 10px;
	border-radius: 28px;
}

#str {
	margin-bottom: 20px;
	width: 14%;
	height: 40px;
	font-family: sans-serif;
	font-size: 15px;
	padding-left: 15px;
}

#int {
	width: 2px;
	height: 20px;
	font-family: sans-serif;
	font-size: 15px;
}

.connect {
	text-align: center;
	width: 100%;
	background-color: cornsilk;
	height: 26px;
}

}
#headerimg {
	text-align: center;
	margin-top: 15px;
}

quotes {
	color: darkturquoise;
	font-size: 25px;
	font-family: cursive;
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
</style>



<body>
	<div id="headertags">
		<a href="Dashboard.html"><b>BabySitter </b><img
			src="https://www.clipartkey.com/mpngs/m/131-1311865_babysitting-icon-nanny-babysitter-icon-png.png"
			width="20px" height="20px" /></a> <span id="leftheader"><a
			href="loginPage">Login</a> <a href="aboutPage">About</a> <a
			href="contactPage">Contact</a> </span>
	</div>
	<div id="headerimg">
		<img
			src="https://www.homeworksolutions.com/wp-content/uploads/2017/06/Find-the-right-nanny-logo.jpg"><br>
		<quotes>
		<b>It takes a big Heart to help shape little Minds.</b></quotes>
	</div>

	<div class="mysitter" border="1">
		<br />
		<p>Choose Your Babysitter</p>
		<table id="TBL">
			<tr>
				<th id="int">ID</th>
				<th id="str">Name</th>
				<th id="int">Age</th>
				<th id="str">Phone</th>
				<th id="str">Rating</th>
				<th id="int">Charges</th>
				<th id="int">Details</th>
			</tr>
			<c:forEach items="${babysitters}" var="mysitter">
				<tr>
					<td id="int">${mysitter.id}</td>
					<td id="str"><a href="paymentPage">${mysitter.name}</a></td>
					<td id="int">${mysitter.age}</td>
					<td id="str">${mysitter.phone}</td>
					<td id="str">${mysitter.rating}</td>
					<td id="int">${mysitter.charges}</td>
					<td id="int">${mysitter.details}</td>
				</tr>
			</c:forEach>
		</table>
		<br />
		<p>Click on babysitter name to book</p>
	</div>
	<div class="connect">

		<a href="termsandconditionPage">Terms and Conditions</a>

	</div>
	<div>
		<a href="#"><img
			src="https://thumbs.dreamstime.com/b/babysitter-retro-font-occupation-vector-babysitter-retro-font-107093621.jpg"
			height="100px" width="180px"> </a>
	</div>
</body>
</html>