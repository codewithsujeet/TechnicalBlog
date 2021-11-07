package technical.blog.com.dao;

import java.sql.*;

import technical.blog.com.entities.User;

public class UserDao {
	private Connection con;

	public UserDao(Connection con) {
		this.con = con;
	}
	
	
	// save user to database
	public boolean saveUser(User user)
	{ 
		boolean f=false;
		
		try {
			String query="insert into user(name,email,password,city,gender,about) values(?,?,?,?,?,?)";
			PreparedStatement psmt=con.prepareStatement(query);
			psmt.setString(1, user.getName());
			psmt.setString(2, user.getEmail());
			psmt.setString(3, user.getPassword());
			psmt.setString(4, user.getCity());
			psmt.setString(5,user.getGender());
			psmt.setString(6,user.getAbout());
			
			psmt.executeUpdate();
			f=true;
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return f;
	}

	
	// get user by  user email id and user password from db
	public User getUserByEmailAndPassword(String email,String password)
	{
		User user=null;
		try {
			String query="select * from user where email=? and password=?";
			PreparedStatement psmt=con.prepareStatement(query);
			psmt.setString(1, email);
			psmt.setString(2, password);
			
			ResultSet rs=psmt.executeQuery();
			while(rs.next())
			{
				user=new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setCity(rs.getString("city"));
				user.setGender(rs.getString("gender"));
				user.setAbout(rs.getString("about"));
				user.setRdate(rs.getTimestamp("rdate"));
				user.setProfile(rs.getString("profile"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return user;
	}

	
   // update user detail in db
	public boolean updateUser(User user)
	{
		boolean f=false;
		try {
		
			String query="update user set name=?,email=?,password=?,city=?,gender=?,about=?,profile=? where id=?";
			PreparedStatement psmt=con.prepareStatement(query);
			psmt.setString(1, user.getName());
			psmt.setString(2, user.getEmail());
			psmt.setString(3, user.getPassword());
			psmt.setString(4, user.getCity());
			psmt.setString(5,user.getGender());
			psmt.setString(6,user.getAbout());
			psmt.setString(7, user.getProfile());
			psmt.setInt(8, user.getId());
			
			psmt.executeUpdate();
			f=true;
			
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return f;
	}
	
	
	
}
