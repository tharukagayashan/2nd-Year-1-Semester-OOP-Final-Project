<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" import="pageNumber.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="UpdateResultServlet" method="post" onsubmit="return validate();">
	<% 
	
		String rid = request.getParameter("id");
		if(rid != null){
			
			int editId = Integer.parseInt(rid);
			
			try{
				Connection conn = null;
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/schooldb", "root", "");
				
				String SQL = "SELECT * FROM result WHERE id='"+editId+"'";	
				
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()){
				
				%>
				ID: <input type="text" readonly name="rid" value="<%=rs.getString("id")%>"><br><br>
				Subject: <input type="text" name="rsubject" value="<%=rs.getString("subject")%>"><br><br>
    			Student Name: <input type="text" name="rname" value="<%=rs.getString("name")%>"><br><br>
				Year: <input type="text" name="ryear" value="<%=rs.getString("year")%>"><br><br>
				Grade: <input type="text" name="rgrade" value="<%=rs.getString("grade")%>"><br><br>
				Date: <input type="date" name="rdate" value="<%=rs.getString("date")%>"><br><br>
				Result: <input type="text" name="rresult" value="<%=rs.getString("results")%>"><br><br>
				Description: <input type="text" name="rdescription" value="<%=rs.getString("description")%>"><br><br>
	
						<input type="submit" name="updateData" value="Update Result">
					
				<%
				}
				
				}catch(Exception e){
					
					e.printStackTrace();
					
				}
		}
				%>
	</form>

</body>
</html>