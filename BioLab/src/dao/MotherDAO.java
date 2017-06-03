package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import connection.DB;
import model.Mother;

public class MotherDAO extends PatientDAO{
	
	public MotherDAO(){
		super();
	}
	
	public void saveMother(Mother mother) throws Exception{
		savePatient(mother);
		
		DB db = new DB();
		Connection con = null;
		PreparedStatement st = null;
		
		String sqlq = "INSERT INTO bioproject.mother VALUES (?,?);";
		
		try{
			db.open();
			con=db.getConnection();
			st=con.prepareStatement(sqlq);
			st.setString(1, mother.getPatientId());
			st.setInt(2, mother.getAfm());
			st.executeUpdate();
			st.close();
			db.close();
		}catch(Exception e){
			throw new Exception("An error occured while getting mothers from database: " + e.getMessage());
		}finally{
			try {
				db.close();
			} catch (Exception e) {
				
			} 
		}
	}
	
	public ArrayList<Mother> getMother() throws Exception{
		
		DB db= new DB();
		Connection con = null;
		String sqlquery = "SELECT * FROM bioproject.patient JOIN bioproject.mother ON bioproject.patient.patient_id=bioproject.mother.mother_id;";
		ResultSet rs =null;
		Statement st = null;
		ArrayList<Mother> results = new ArrayList<Mother>();
		
		try{
			db.open();
			con = db.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(sqlquery);
			
			while(rs.next()){
				results.add(new Mother(rs.getString("patientId"),rs.getString("name"),rs.getString("surname"),rs.getString("HLA_A"),rs.getString("HLA_B"),rs.getString("HLA_C"),rs.getString("HLA_DPB1"),rs.getString("HLA_DQA1"),rs.getString("HLA_DQB1"),rs.getString("HLA_DRB1"),rs.getInt("afm")));
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
