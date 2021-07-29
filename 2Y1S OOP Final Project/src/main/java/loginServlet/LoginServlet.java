package loginServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbUtils.DBConnection;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		String SQL = "SELECT * FROM admin";

		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;

		try {

			con = DBConnection.connect();
			pst = con.prepareStatement(SQL);
			rs = pst.executeQuery();

			while (rs.next()) {

				String name = rs.getString(2);
				String uname = rs.getString(3);
				String upass = rs.getString(4);

				if (uname.equals(username) && upass.equals(password)) {

					response.sendRedirect("index.jsp");
					
					HttpSession session = request.getSession(true);
					session.setAttribute("name", name);
					
				}
				else {
					PrintWriter out = response.getWriter();
					out.println("<script type=\"text/javascript\">");
					out.println("alert('User or password incorect');");
					out.println("location = 'login.jsp'");
					out.println("</script>");
				}

			}

		} catch (IOException | SQLException e) {
			System.out.println("Error : " + e);
		}

	}

}
