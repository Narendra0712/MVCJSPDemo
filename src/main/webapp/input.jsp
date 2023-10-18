<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ICICI Securities</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="./images/icon.png" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="./pages/style.css" type="text/css"></link>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body><div id="bg">
		<%
		String msg = request.getParameter("msg");

		if (msg != null && msg.equals("loginerror")) {
			out.println("<p style=color:red;text-align:center>" + "Invalid Username or Password !</p>");
		}

		if (msg != null && msg.equals("registersuccess")) {
			out.println("<p style=color:green;text-align:center>" + "User Registration Successful !</p>");
		}

		if (msg != null && msg.equals("notloggedin")) {
			out.println("<p style=color:red;text-align:center>" + "You need to Login First !</p>");
		}

		if (msg != null && msg.equals("logoutsuccess")) {
			out.println("<p style=color:green;text-align:center>" + "User Logout Successful !</p>");
		}
		%>

		
			<div class="cardbody">
				<form action="controller/checkuser.jsp" method="post" class="form">
					<h2>Login</h2>
					<div class="inputbox">
						<input type="text" required="required" name="username"></input> <span>Username</span>
					</div>
					<div class="inputbox">
						<input type="password" required="required" name="password"></input> <span>Password</span>
					</div>
					<div class="inputbox">
						<input type="submit" value="Login"></input>
					</div>
				</form>
			</div>
		</div>
</body>
</html>
