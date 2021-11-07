package technical.blog.com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import technical.blog.com.dao.UserDao;
import technical.blog.com.entities.Message;
import technical.blog.com.entities.User;
import technical.blog.com.helper.ConnectionProvider;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		// fetch all form data from login-page.jsp
		String email=request.getParameter("user-email");
		String password=request.getParameter("user-password");
		
		// create the object of UserDao
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		
		
		User user=dao.getUserByEmailAndPassword(email, password);
		
		// check if user is null
		if(user==null)
		{
//			out.println("Email ID and password are invalid sorry");
			
			Message m=new Message("Invalid email and password ! please try again...","error","alert-danger","text-danger");
			HttpSession s=request.getSession();
			s.setAttribute("msg", m);
			
			response.sendRedirect("login-page.jsp");
		}
		else {
			//create the httpsession and set the object of user to that sessioon
			HttpSession session=request.getSession();
			session.setAttribute("currentUser", user);
			
			// we are redirecting to profile page
			response.sendRedirect("profile-page.jsp");
		}
	}

}
