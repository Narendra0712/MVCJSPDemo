<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", 0);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ICICI Securities</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="icon" href="../images/icon.png" />
<link rel="stylesheet" href="../pages/style.css" type="text/css"></link>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
	if (!session.isNew() && session.getAttribute("USERNAME") != null) {
	%>
	<nav>
	<div class="navigation">
		<img src="../images/logo.png" alt="" height="50"></img>

		<ul class="nav navbar-nav navbar-right">
		<li><h3 style="color: green">Welcome ${sessionScope.USERNAME}</h3></li>
			<li><a href="../controller/logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
		</ul>
	</div>
</nav>
	<%
	} else {
	response.sendRedirect("../input.jsp?msg=notloggedin");
	}
	%>
</body>
</html>









