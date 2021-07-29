import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import dbUtils.DBConnection;

public class Code {
	
	public static String resultUpdate(Result res) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String SQL = "UPDATE result SET subject='"+res.getSubject()+"', name='"+res.getName()+"', year='"+res.getYear()+"', grade='"+res.getGrade()+"',date='"+res.getDate()+"',results='"+res.getResults()+"', description='"+res.getDescription()+"' WHERE id='"+res.getId()+"'";
		
		try {
			
			con = DBConnection.connect();
			pstmt = con.prepareStatement(SQL);
			pstmt.executeUpdate();
			
			return "Update Successful";
						
		}catch(Exception a) {
			a.printStackTrace();
		}
		return "Update Fail";
	}


	public static int insertResult(Result res) {
		
		Connection connection = null;
		Statement stmt = null;

		String SQL = "INSERT INTO result VALUES (0,'"+res.getSubject()+"','"+res.getName()+"','"+res.getYear()+"','"+res.getGrade()+"','"+res.getDate()+"','"+res.getResults()+"','"+res.getDescription()+"')";

		try {

			connection = DBConnection.connect();
			stmt = connection.createStatement();
			int st = stmt.executeUpdate(SQL);

		} catch (Exception e) {
			System.out.println("Exception : " + e);
		}

		return 0;
		
	}
	
}