import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddResultServlet
 */
@WebServlet("/AddResultServlet")
public class AddResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddResultServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String subject = request.getParameter("subject");
		String name = request.getParameter("name");
		String year = request.getParameter("year");
		String grade = request.getParameter("grade");
		String date = request.getParameter("date");
		String result = request.getParameter("result");
		String desc = request.getParameter("description");
		
		
		Result res = new Result();
		res.setSubject(subject);
		res.setName(name);
		res.setYear(year);
		res.setGrade(grade);
		res.setDate(date);
		res.setResults(result);
		res.setDescription(desc);
		
		Code.insertResult(res);
		
	}

}
