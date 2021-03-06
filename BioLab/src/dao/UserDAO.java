package dao;

import java.sql.*;
import java.util.ArrayList;
import connection.DB;
//import model.Doctor;
import model.User;


public class UserDAO {

	public UserDAO() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * Queries database and returns all registered students in a ArrayList
	 * 
	 * @return ArrayList<Doctor>
	 * @throws Exception
	 */
	public ArrayList<User> getUser() throws Exception {
		
		DB db = new DB();
		Connection con = null;
		//con = db.getConnection();
		ResultSet rs =null;
		Statement st = null;
		String sqlquery = "SELECT * FROM user;";
		ArrayList<User> results= new ArrayList<User>();
		
		try{
			
			db.open();
			con = db.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(sqlquery);
			while(rs.next()){
				results.add(new User(rs.getString("name"),rs.getString("surname"),rs.getString("username"),rs.getString("email"),rs.getString("password")));
			}
			
			rs.close();
			st.close();
			
			
			return results;
			
		}catch(Exception e){
			throw new Exception("An error occured while getting users from database: " + e.getMessage());
		}finally {
			
			try {
				db.close();
			} catch (Exception e) {
				
			} 
			
		}
		
	}//End of getIndividual

	/**
	 * Saves doctor in the database
	 * 
	 * @param individual, Individual
	 * @throws Exception
	 */
	public void saveUser(User user) throws Exception {

		DB db = new DB();
		Connection con = null;
		PreparedStatement st = null;
		String sqlq = "Insert into bioproject.user(name,surname,username,email,password) values(?,?,?,?,?);"; //leipei to onoma tis basis
		
		try{
			
			db.open();
			con=db.getConnection();
			st=con.prepareStatement(sqlq);
			st.setString(1, user.getName());
			st.setString(2, user.getSurname());
			st.setString(4, user.getEmail());
			st.setString(3, user.getUsername());
			st.setString(5, user.getPassword());
			st.executeUpdate();
			st.close();
			
			
		}catch(Exception e){
			throw new Exception("An error occured while getting users from database: " + e.getMessage());
		}finally{
			try {
				db.close();
			} catch (Exception e) {
				
			} 
		}
	}
	
	public User confirmUser(String name, String surname, String username, String email)throws Exception{
		Connection con = null;
		DB db =new DB();
		User user = null;
		PreparedStatement st = null;
		String sqlq = "SELECT * FROM bioproject.user WHERE(name=? AND surname = ?) OR username = ? OR email = ?;";
		ResultSet rs = null;
		
		try{
			db.open();
			con=db.getConnection();
			st=con.prepareStatement(sqlq);
			st.setString(1, name);
			st.setString(2, surname);
			st.setString(3, username);
			st.setString(4, email);
			rs=st.executeQuery();
			
			if(rs.next()){
				user=new User(rs.getString("name"),rs.getString("surname"),rs.getString("username"),rs.getString("email"),rs.getString("password"));
				
			}
			rs.close();
			st.close();
			
			return user;
		}catch(Exception e){
			throw new Exception("An error occured while getting users from database: " + e.getMessage());
		}finally{
			try {
				db.close();
			} catch (Exception e) {
				
			} 
		}
	}
	
	public User confirmUser(String username, String password)throws Exception{
		Connection con = null;
		DB db =new DB();
		//boolean flag =false;
		PreparedStatement st = null;
		String sqlq = "SELECT * FROM user WHERE (username = ?) AND (password = ?);";
		ResultSet rs = null;
		User user = null;
		
		try{
			db.open();
			con=db.getConnection();
			st=con.prepareStatement(sqlq);
			st.setString(1, username);
			//st.setString(2, username);
			st.setString(2, password);
			rs=st.executeQuery();
			
			if(rs.next()){
					user=new User(rs.getString("name"),rs.getString("surname"),rs.getString("username"),rs.getString("email"),rs.getString("password"));
					return user;
			}
			
			rs.close();
			st.close();
			
			return user;
		}catch(Exception e){
			throw new Exception("An error occured while getting users from database: " + e.getMessage());
			}finally{
			try {
				db.close();
			} catch (Exception e) {
				
			} 
		}
	}
	
	
	public ArrayList<User> findUserByKeyword(String keyword) throws Exception{
		Connection con = null;
		DB db = new DB();
		ArrayList<User> results = new ArrayList<User>();
		String sqlquery = "SELECT * FROM bioproject.doctor WHERE surname LIKE ? OR name LIKE ? OR username LIKE ?;";
		
		try {
			
			db.open(); //open connection
			con = db.getConnection(); //get Connection Object
			PreparedStatement stmt1 = con.prepareStatement(sqlquery);
			stmt1.setString(1, "%"+keyword+"%");
			stmt1.setString(2, "%"+keyword+"%");
			stmt1.setString(3, "%"+keyword+"%");
			
			ResultSet rs =stmt1.executeQuery();
			
			while(rs.next()){
				results.add(new User(rs.getString("name"),rs.getString("surname"),rs.getString("username"),rs.getString("email"),rs.getString("password")));
			}
			
			rs.close();
			stmt1.close();
			db.close();

			return results;

			

		} catch (Exception e) {

			throw new Exception("An error occured while searching for user in the database: " + e.getMessage());
			
		} finally {
			
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}

	}
	
	
}