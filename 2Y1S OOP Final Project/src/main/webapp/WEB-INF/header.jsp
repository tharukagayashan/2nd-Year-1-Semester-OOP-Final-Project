<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title></title>
	
	<style>
		*{
			margin:0px;
			padding:0px;
		}
		header{
			width:100%;
			background-image:linear-gradient(#457fca,#5691c8);
			padding: 10px 0px;
			text-align:center;
			color:white;
			font-size:20px;
		}
	
	</style>
	
</head>
<body>

	<header>
	
			<h1>School Information Management System</h1>
	
	</header>
	<button style="float:right;padding:20px;"><%="Welcome " + session.getAttribute("name")%></button>
</body>
</html>