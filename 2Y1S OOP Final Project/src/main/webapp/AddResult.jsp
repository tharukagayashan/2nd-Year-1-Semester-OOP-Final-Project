<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<header>
		<%@include file="/WEB-INF/header.jsp"%>
	</header>

<form action="<%=request.getContextPath()%>/AddResultServlet" method="post">

	Subject: <input type="text" name="subject"><br><br>
    Student Name: <input type="text" name="name"><br><br>
	Year: <input type="text" name="year"><br><br>
	Grade: <input type="text" name="grade"><br><br>
	Date: <input type="date" name="date"><br><br>
	Result: <input type="text" name="result"><br><br>
	Description: <input type="text" name="description"><br><br>
	
	<input type="submit" name="submit" value="Insert Result">

</form>

<a href="View.jsp"><button>View Result</button></a>
	
	<footer>
		<%@include file="/WEB-INF/footer.jsp"%>
	</footer>

</body>
</html>