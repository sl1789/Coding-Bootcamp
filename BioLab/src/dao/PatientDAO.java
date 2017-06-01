package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



import connection.DB;
import model.Patient;

public class PatientDAO {
	
	public PatientDAO(){
		
	}
	
	public ArrayList<Patient> getPatient() throws Exception{
		
		DB db = new DB();
		Connection con = null;
		String sqlquery = "SELECT * FROM bioproject.patient;";
		
		try{
			db.open();
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sqlquery);
			ResultSet rs = stmt.executeQuery();
			
			ArrayList<Patient> patientList = new ArrayList<Patient>();
			
			while(rs.next()){
				patientList.add(new Patient(rs.getString("patientId"),rs.getString("name"),rs.getString("surname"),rs.getString("HLA_A"),rs.getString("HLA_B"),rs.getString("HLA_C"),rs.getString("HLA_DPB1"),rs.getString("HLA_DQA1"),rs.getString("HLA_DQB1"),rs.getString("HLA_DRB1")));
			}
			
			rs.close();
			stmt.close();
			
			return patientList;
		}catch (Exception e) {

			throw new Exception("An error occured while getting patients from database: " + e.getMessage());
			
		} finally {
			
			try {
				db.close();
			} catch (Exception e) {
				
			}
			
		}
	}
	
	public void savePatient (Patient pat) throws Exception{
		DB db = new DB();
		Connection con = null;
		PreparedStatement st = null;
		String sqlq = "INSERT INTO bioproject.patient(patientId,name,surname,HLA_A,HLA_B,HLA_C,HLA_DPB1,HLA_DQA1,HLA_DQB1,HLA_DRB1) VALUES (?,?,?,?,?,?,?,?,?,?);";
		
		try{
			db.open();
			con=db.getConnection();
			st=con.prepareStatement(sqlq);
			st.setString(1, pat.getPatientId());
			st.setString(2, pat.getName());
			st.setString(3, pat.getSurname());
			st.setString(4, pat.getHLA_A());
			st.setString(5, pat.getHLA_B());
			st.setString(6, pat.getHLA_C());
			st.setString(7, pat.getHLA_DPB1());
			st.setString(8, pat.getHLA_DQA1());
			st.setString(9, pat.getHLA_DQB1());
			st.setString(10, pat.getHLA_DRB1());
			st.executeUpdate();
			st.close();
			
			
		}catch(Exception e){
			throw new Exception("An error occured while getting patients from database: " + e.getMessage());
		}finally{
			try {
				db.close();
			} catch (Exception e) {
				
			} 
		}
		
	}
	
	public ArrayList<Patient> findPatientByKeyword(String keyword) throws Exception{
		Connection con = null;
		ArrayList<Patient> results = new ArrayList<Patient>();
		DB db = new DB();
		String sqlquery = "SELECT * FROM bioproject.patient WHERE name LIKE ? OR surname LIKE ? OR patientId LIKE ?;";
		
		try{
			db.open(); //open connection
			con = db.getConnection(); //get Connection Object
			PreparedStatement stmt1 = con.prepareStatement(sqlquery);
			stmt1.setString(1, "%"+keyword+"%");
			stmt1.setString(2, "%"+keyword+"%");
			stmt1.setString(3, "%"+keyword+"%");
			
			ResultSet rs =stmt1.executeQuery();
			
			//insert while
			while(rs.next()){
				results.add(new Patient(rs.getString("patientId"),rs.getString("name"),rs.getString("surname"),rs.getString("HLA_A"),rs.getString("HLA_B"),rs.getString("HLA_C"),rs.getString("HLA_DPB1"),rs.getString("HLA_DQA1"),rs.getString("HLA_DQB1"),rs.getString("HLA_DRB1")));
			}
			
			
			rs.close();
			stmt1.close();
			db.close();

			return results;
		}catch(Exception e) {

			throw new Exception("An error occured while searching for student in the database: " + e.getMessage());
			
		} finally {
			
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}
	}
	
	public ArrayList<Patient> findPatientByGenes(String HLA_A,String HLA_B,String HLA_C,String HLA_DPB1,String HLA_DQA1,String HLA_DQB1,String HLA_DRB1) throws Exception{
		Connection con = null;
		ArrayList<Patient> results = new ArrayList<Patient>();
		DB db = new DB();
		String sqlquery = "SELECT * FROM bioproject.patient WHERE HLA_A= ? AND HLA_B= ? AND HLA_C= ? AND HLA_DPB1=? AND HLA_DQA1=? AND HLA_DQB1=? AND HLA_DRB1=? ;";
		
		try{
			db.open(); //open connection
			con = db.getConnection(); //get Connection Object
			PreparedStatement stmt1 = con.prepareStatement(sqlquery);
			stmt1.setString(1, HLA_A);
			stmt1.setString(2, HLA_B);
			stmt1.setString(3, HLA_C);
			stmt1.setString(4, HLA_DPB1);
			stmt1.setString(5, HLA_DQA1);
			stmt1.setString(6, HLA_DQB1);
			stmt1.setString(7, HLA_DRB1);
			
			ResultSet rs =stmt1.executeQuery();
			
			//insert while
			while(rs.next()){
				results.add(new Patient(rs.getString("patientId"),rs.getString("name"),rs.getString("surname"),rs.getString("HLA_A"),rs.getString("HLA_B"),rs.getString("HLA_C"),rs.getString("HLA_DPB1"),rs.getString("HLA_DQA1"),rs.getString("HLA_DQB1"),rs.getString("HLA_DRB1")));
			}
			
			
			rs.close();
			stmt1.close();
			db.close();

			return results;
		}catch(Exception e) {

			throw new Exception("An error occured while searching for student in the database: " + e.getMessage());
			
		} finally {
			
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}
	}

}
