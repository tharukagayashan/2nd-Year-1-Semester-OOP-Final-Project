<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Home</title>
	<link rel="stylesheet" href="css/index_style.css">
</head>
<body>

	<header>
		<%@include file="/WEB-INF/header.jsp"%>
	</header>
		
		<table border="0">
			<tr>
				<td id="td1" class="td1"><a href="userManagement.jsp"><button>User Management</button></a></td>
				<td id="td2" class="td1"><a href="subject.jsp"><button>Subject Management</button></a></td>
			</tr>
			<tr>
				<td id="td1" class="td2"><a href="View.jsp"><button>Result Management</button></a></td>
				<td id="td2" class="td2"><a href="library.jsp"><button>Library Management</button></a></td>
			</tr>
		</table>
	
	<footer>
		<%@include file="/WEB-INF/footer.jsp"%>
	</footer>
	
</body>
</html>