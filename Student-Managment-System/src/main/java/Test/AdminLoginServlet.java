package Test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/admin")
public class AdminLoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException {
		
		String nN=req.getParameter("uname");
		String pW=req.getParameter("pword");
		AdminBean ab=new AdminLoginDAO().Login(nN, pW);
		
		if(ab==null) {
			req.setAttribute("msg","Invalid login process.. <br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else {
			HttpSession hs=req.getSession();
			hs.setAttribute("abean", ab);
			req.getRequestDispatcher("AdminLoginSuccess.jsp").forward(req, res);
		}
		
	}
	
}