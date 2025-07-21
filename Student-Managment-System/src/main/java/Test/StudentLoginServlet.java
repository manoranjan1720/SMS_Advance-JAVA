package Test;
 
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/StudentLoginServlet")
public class StudentLoginServlet extends  HttpServlet
{
	@SuppressWarnings("unused")
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		String rollNo = req.getParameter("RollNo");
		StudentBean sb = new StudentBeanDAO().Login(rollNo);
		if(sb==null)
		{
			req.setAttribute("msg", "Invalid Login Process...<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else
		{
			HttpSession hs = req.getSession();
			hs.setAttribute("sbean", sb);
			req.getRequestDispatcher("StudentLoginSucess.jsp").forward(req, res);
		}
		
	}

}