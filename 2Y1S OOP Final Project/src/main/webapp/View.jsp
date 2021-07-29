<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" import="java.sql.DriverManager"
	import="java.sql.Statement" import="java.sql.ResultSet"
	import="pageNumber.*"%>
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

	<table border="1">

		<tr>

			<th>ID</th>
			<th>Subject</th>
			<th>Student Name</th>
			<th>Year</th>
			<th>Grade</th>
			<th>Date</th>
			<th>Result</th>
			<th>Description</th>
			<th>Update/Delete</th>

		</tr>
		<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/schooldb", "root", "");

			Statement stmt = null;

			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM result");

			while (rs.next()) {
		%>
	   <tr>
			<td><%=rs.getString("id")%></td>
			<td><%=rs.getString("subject")%></td>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("year")%></td>
			<td><%=rs.getString("grade")%></td>
			<td><%=rs.getString("date")%></td>
			<td><%=rs.getString("results")%></td>
			<td><%=rs.getString("description")%></td>
			
			<td>
				<a href="UpdateResult.jsp?id=<%=rs.getInt("id")%>"><button>Update</button></a>
				<a href="DeleteResult.jsp?id=<%=rs.getInt("id")%>"><button>Delete</button></a>
			</td>
		</tr>

		<%
		}

		} catch (Exception e) {
			e.printStackTrace();
		}
		%>

	</table>
	<br><br>
	
		<a href="AddResult.jsp"><button>Add Result</button></a>
	
	<footer>
		<%@include file="/WEB-INF/footer.jsp"%>
	</footer>
</body>
</html>