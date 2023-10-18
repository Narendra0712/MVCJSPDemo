<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="icon" href="../images/icon.png" />
  <link rel="stylesheet" href="../pages/style.css" type="text/css"></link>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		if(!session.isNew() && session.getAttribute("USERNAME") != null) {
			
	%>
			<div class="container">
				<jsp:include page="navbar.html"></jsp:include>
				
				<h1 style="color:green"> Welcome ${sessionScope.USERNAME} 
				to your profile page</h1>
			</div>
	<%	
		}
		else
		{
			response.sendRedirect("../input.jsp?msg=notloggedin");
		}
	%>
	<div class="container">
      <table class="table table-bordered table-hover">
        <thead class="thead">
          <tr>
            <th rowSpan="2">Satement Date</th>
            <th rowSpan="2">To Date</th>
            <th rowSpan="2">From Date</th>
            <th rowSpan="2">Start Pdf Generation</th>
            <th colSpan="3">Pdf Generation Status</th>
            <th rowSpan="2">View Samples</th>
            <th rowSpan="2">Start Mailing Process</th>
            <th colSpan="3">Mailing Process Status</th>
          </tr>
          <tr>
            <th>Pdf Remaining</th>
            <th>Pdf Generated</th>
            <th>Total Pdfs</th>
            <th>Mails Remaining</th>
            <th>Mails Sent</th>
            <th>Total Mails</th>
          </tr>
        </thead>
        <tbody class="tbody">
          <tr>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td>
            <td>6</td>
            <td>7</td>
            <td>8</td>
            <td>9</td>
            <td>10</td>
            <td>11</td>
            <td>12</td>
          </tr>
        </tbody>
      </table>
    </div>
</body>
</html>









