package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import connection.DB;
import model.Child;


public class ChildDAO extends PatientDAO{
	
	ChildDAO(){
		super();
	}
	
	public void saveChild(Child child) throws Exception{
		savePatient(child);
		
		DB db = new DB();
		Connection con = null;
		PreparedStatement st = null;
		
		String sqlq = "INSERT INTO bioproject.child(dateOfBirth) VALUES (?);";
		
		try{
			db.open();
			con=db.getConnection();
			st=con.prepareStatement(sqlq);
			st.setDate(1, child.getDateOfBirth());
			st.executeUpdate();
			st.close();
			db.close();
		}catch(Exception e){
			throw new Exception("An error occured while getting children from database: " + e.getMessage());
		}finally{
			try {
				db.close();
			} catch (Exception e) {
				
			} 
		}
		
	}
	
	public ArrayList<Child> getChild() throws Exception{
		
		DB db= new DB();
		Connection con = null;
		String sqlquery = "SELECT * FROM bioproject.patient JOIN bioproject.child ON bioproject.patient.patient_id=bioproject.child.child_id;";
		ResultSet rs =null;
		Statement st = null;
		ArrayList<Child> results = new ArrayList<Child>();
		
		try{
			db.open();
			con = db.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(sqlquery);
			
			while(rs.next()){
				results.add(new Child(rs.getString("patientId"),rs.getString("name"),rs.getString("surname"),rs.getString("HLA_A"),rs.getString("HLA_B"),rs.getString("HLA_C"),rs.getString("HLA_DPB1"),rs.getString("HLA_DQA1"),rs.getString("HLA_DQB1"),rs.getString("HLA_DRB1"),rs.getDate("dateOfBirth")));
			}
			
			
			rs.close();
			st.close();
		
			
			return results;
			
		}catch(Exception e){
			throw new Exception("An error occured while getting doctors from database: " + e.getMessage());
		}finally {
			
			try {
				db.close();
			} catch (Exception e) {
				
			} 
			
		}
	}

}
