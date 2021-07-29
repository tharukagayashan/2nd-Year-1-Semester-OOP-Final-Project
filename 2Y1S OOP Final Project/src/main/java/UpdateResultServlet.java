

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 */
@WebServlet("/UpdateResultServlet")
public class UpdateResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateResultServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		if(request.getParameter("updateData") != null) {
			
			int id = Integer.parseInt(request.getParameter("rid"));
			String subject = request.getParameter("rsubject");
			String name = request.getParameter("rname");
			String year = request.getParameter("ryear");
			String grade = request.getParameter("rgrade");
			String date = request.getParameter("rdate");
			String result = request.getParameter("rresult");
			String description = request.getParameter("rdescription");
			
			Result res = new Result();
			res.setId(id);
			res.setSubject(subject);
			res.setName(name);
			res.setYear(year);
			res.setGrade(grade);
			res.setDate(date);
			res.setResults(result);
			res.setDescription(description);
			
			Code.resultUpdate(res);
			
		}
		
	}

}
