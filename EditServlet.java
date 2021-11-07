package technical.blog.com.servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import technical.blog.com.dao.UserDao;
import technical.blog.com.entities.User;
import technical.blog.com.helper.ConnectionProvider;
import technical.blog.com.helper.DeleteAndSaveFile;

@MultipartConfig
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		// fetch all form data 
		
		String edit_user_name=request.getParameter("edit-user-name");
		String edit_user_email=request.getParameter("edit-user-email");
		String edit_user_password=request.getParameter("edit-user-password");
		String edit_user_city=request.getParameter("edit-user-city");
		String edit_user_gender=request.getParameter("edit-user-gender");
		String edit_user_about=request.getParameter("edit-user-about");
		
		// get the image
		Part part=request.getPart("edit-user-profile");
		//out.print(part);
		String filename=part.getSubmittedFileName();
		//out.println(filename);
		
		// fetch current user from session

		HttpSession s=request.getSession();
		User u=(User)s.getAttribute("currentUser");
		
		// set the all data to current user object
		u.setName(edit_user_name);
		u.setEmail(edit_user_email);
		u.setPassword(edit_user_password);
		u.setCity(edit_user_city);
		u.setGender(edit_user_gender);
		u.setAbout(edit_user_about);
		u.setProfile(filename);
		
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		boolean ans=dao.updateUser(u);
		if(ans) {
			out.println("updated successfully");
			String path=request.getRealPath("/")+"images"+File.separator+u.getProfile();
			DeleteAndSaveFile.deleteFile(path);
			if(DeleteAndSaveFile.saveFile(part.getInputStream(), path))
			{
				out.println("Profile Updated");
			}
			else {
				out.println("Profile are not updated");
			}
		}
		else {
			out.println("not updated");
		}
		
	}

}
