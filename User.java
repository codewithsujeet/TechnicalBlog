package technical.blog.com.entities;

import java.sql.Timestamp;

public class User {
    private int id;
    private String name;
    private String email;
    private String password;
    private String city;
    private String gender;
    private String about;
    private Timestamp rdate;
    private String profile;
    
    // contructor
	public User() {
		super();
	}

	public User(String name, String email, String password, String city, String gender, String about) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.city = city;
		this.gender = gender;
		this.about = about;
		
	}
	
	

	public User(String name, String email, String password, String city, String gender, String about,String profile) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.city = city;
		this.gender = gender;
		this.about = about;
		
		this.profile = profile;
	}

	public User(int id, String name, String email, String password, String city, String gender, String about,
			Timestamp rdate, String profile) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.city = city;
		this.gender = gender;
		this.about = about;
		this.rdate = rdate;
		this.profile = profile;
	}

	
	// getter and setter method
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public Timestamp getRdate() {
		return rdate;
	}

	public void setRdate(Timestamp rdate) {
		this.rdate = rdate;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	// toString() method
	
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", city=" + city
				+ ", gender=" + gender + ", about=" + about + ", rdate=" + rdate + ", profile=" + profile + "]";
	}
	
	
	

	
	
    
	
    
    
   
}
