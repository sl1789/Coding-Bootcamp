package model;

public class User {

	private String name;
	private String surname;
	private String email;
	private String username;
	private String password;
	//private String iconfirm;

	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User() {
		
	}
	
	

	public User(String name, String surname, String username, String email, String password) {
		super();
		this.name = name;
		this.surname = surname;
		this.email = email;
		this.username = username;
		this.password = password;
	}

	@Override
	public String toString() {
		return "Individual [Name=" + this.getName() + ", Surname=" + this.getSurname() + ", Email=" + this.getEmail()
				+ ", Username=" + this.getUsername() + ", Password=" + this.getPassword() + "]";
	}

	
}
