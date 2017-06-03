package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import connection.DB;
import model.Examination;

public class ExamDAO {
	
	public ExamDAO(){
		
	}
	
	public void saveExamination (Examination exam) throws Exception{
		DB db = new DB();
		Connection con = null;
		PreparedStatement st = null;
		String sqlq = "INSERT INTO bioproject.examination(fk_username,date,type,notes,patient_id) VALUES (?,?,?,?,?);";
		
		try{
			db.open();
			con=db.getConnection();
			st=con.prepareStatement(sqlq);
			st.setString(1, exam.getFk_username());
			st.setString(2, exam.getDate());
			st.setString(3, exam.getType());
			st.setString(4, exam.getNotes());
			st.setString(5, exam.getPatient_id());
			st.executeUpdate();
			st.close();
			
		}catch(Exception e){
			throw new Exception("An error occured while getting examinations from database: " + e.getMessage());
		}finally{
			try {
				db.close();
			} catch (Exception e) {
				
			} 
		}
		
	}
	
	
	public ArrayList<Examination> getExamination() throws Exception{
		
		DB db = new DB();
		Connection con = null;
		String sqlquery = "SELECT * FROM bioproject.examination;";
		
		try{
			db.open();
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sqlquery);
			ResultSet rs = stmt.executeQuery();
			
			ArrayList<Examination> examinationList = new ArrayList<Examination>();
			
			while(rs.next()){
				examinationList.add(new Examination(rs.getString("fk_username"),rs.getString("date"),rs.getString("type"),rs.getString("notes"),rs.getString("patient_id")));
			}
			
			rs.close();
			stmt.close();
			
			return examinationList;
		}catch (Exception e) {

			throw new Exception("An error occured while getting examinations from database: " + e.getMessage());
			
		} finally {
			
			try {
				db.close();
			} catch (Exception e) {
				
			}
			
		}
	}
	
	public ArrayList<Examination> findExaminationByDocUsername(String keyword) throws Exception{
		Connection con = null;
		ArrayList<Examination> results = new ArrayList<Examination>();
		DB db = new DB();
		String sqlquery = "SELECT * FROM bioproject.examination WHERE fk_username LIKE ?;";
		
		try{
			db.open(); //open connection
			con = db.getConnection(); //get Connection Object
			PreparedStatement stmt1 = con.prepareStatement(sqlquery);
			stmt1.setString(1, "%"+keyword+"%");
			
			ResultSet rs =stmt1.executeQuery();
			
			//insert while
			while(rs.next()){
				results.add(new Examination(rs.getString("fk_username"),rs.getString("date"),rs.getString("type"),rs.getString("notes"),rs.getString("patient_id")));
			}
			
			
			rs.close();
			stmt1.close();
			db.close();

			return results;
		}catch(Exception e) {

			throw new Exception("An error occured while searching for examination in the database: " + e.getMessage());
			
		} finally {
			
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}
	}


}
