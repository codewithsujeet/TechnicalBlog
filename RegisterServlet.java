package technical.blog.com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import technical.blog.com.dao.UserDao;
import technical.blog.com.entities.User;
import technical.blog.com.helper.ConnectionProvider;


@MultipartConfig
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		String check=request.getParameter("user-check");
				
		// check the if user not check the term and condition
		if(check==null)
		{
			out.println("Please fill the all form data ?");
		}
		else {
			// fetch all form data from register-page.jsp
			String name=request.getParameter("user-name");
			String email=request.getParameter("user-email");
			String password=request.getParameter("user-password");
			String city=request.getParameter("user-city");
			String gender=request.getParameter("user-gender");
			String about=request.getParameter("user-about");
			
			//create the user object and set the all details to that user object
			User user=new User(name,email,password,city,gender,about);
			
			// create the object of UserDao
			UserDao dao=new UserDao(ConnectionProvider.getConnection());
			
			// call to saveUser() method of UserDao
			boolean answer=dao.saveUser(user);
			
			if(answer)
			{
				out.println(" Saved Records");
			}
			else {
				out.println("Something went wrong... please try again");
			}
			
			
		}
		
	}

}
