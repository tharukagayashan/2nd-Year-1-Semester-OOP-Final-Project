<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% 
	
	String id = request.getParameter("id");
	
	if(id != null){
		
		int deleteId = Integer.parseInt(id);
		
		String SQL = "DELETE FROM result WHERE id='"+deleteId+"'";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/schooldb", "root", "");
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			int rs = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	%>

</body>
</html>