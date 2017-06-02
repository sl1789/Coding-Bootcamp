package model;

public class Doctor extends User {
	
	private int credential;
	//private int user_id;

//	public int getUser_id() {
//		return user_id;
//	}
//
//	public void setUser_id(int user_id) {
//		this.user_id = user_id;
//	}

	public int getCredential() {
		return credential;
	}

	public void setCredential(int credential) {
		this.credential = credential;
	}

	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Doctor(String name, String surname, String username, String email, String password,int credential) {
		super(name, surname, username, email, password);
		this.credential=credential;
		//this.user_id=user_id;
	}

	@Override
	public String toString() {
		return "Doctor [ " + super.toString() + " Credential= " + getCredential() +"]";
	}
	
	
	
	

}
