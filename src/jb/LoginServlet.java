package jb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String n=request.getParameter("t1");
		String pwd=request.getParameter("t2");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		if(n.equals("india") && pwd.equals("india")){
			HttpSession hs=request.getSession();
			hs.setAttribute("uname", n);
			response.sendRedirect("success.jsp");
		}else{
			out.println("<font color=red>Sorry! Username or Password incorrect... Try Again!!!</font>");
			RequestDispatcher rd=request.getRequestDispatcher("input.jsp");
			rd.include(request, response);
		}
		
		
	}

}
