<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="css/login_style.css">
</head>
<body>
	<form action="LoginServlet" method="post">
	<table border="">
		<tr>
			<td colspan="2" style="background-color:white"><h1>Login Page</h1></td>
		</tr>
		<tr>
			<td>Username</td>
			<td><input type="text" name="username" class="inputElement"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" class="inputElement"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" name="submit" value="Login" class="button" style="width:100%;"></td>
		</tr>
		
	</table>
</form>
	
</body>
</html>