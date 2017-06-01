package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import connection.DB;
import model.Transplant;

public class TransplantDAO {
	
	public TransplantDAO(){
		
	}
	
	public ArrayList<Transplant> getTransplant() throws Exception {
		DB db = new DB();
		Connection con = null;
		ResultSet rs = null;
		Statement st = null;
		String sqlquery = "SELECT * FROM transplants;";
		ArrayList<Transplant> results = new ArrayList<Transplant>();

		try {

			db.open();
			con = db.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(sqlquery);
			while (rs.next()) {
				results.add(new Transplant(rs.getString("transplants.type"),
						rs.getString("transplants.HLA-A"), rs.getString("transplants.HLA-B"), rs.getString("transplants.HLA-C"),
						 rs.getString("transplants.HLA-DPB1"), rs.getString("transplants.HLA-DQA1"), rs.getString("transplants.HLA-DQB1"),
						 rs.getString("transplants.HLA-DRB1"),rs.getInt("transplants.hospital_id")));
			
			}

			rs.close();
			st.close();

			return results;

		} catch (Exception e) {
			throw new Exception("An error occured while getting doctors from database: " + e.getMessage());
		} finally {

			try {
				db.close();
			} catch (Exception e) {
			}
		}
	}
	
	public void saveTransplant(Transplant transplant) throws Exception{
		DB db = new DB();
		Connection con = null;
		PreparedStatement st = null;
		String sqlq = "INSERT INTO bioproject.transplants(type,hospital_id,HLA_A,HLA_B,HLA_C,HLA_DPB1,HLA_DQA1,HLA_DQB1,HLA_DRB1) values(?,?,?,?,?,?,?,?,?);";
		
		try{
			db.open();
			con=db.getConnection();
			st=con.prepareStatement(sqlq);
			st.setString(1, transplant.getType());
			st.setInt(2, transplant.getHospital_id());
			st.setString(3, transplant.getHLA_A());
			st.setString(4, transplant.getHLA_B());
			st.setString(5, transplant.getHLA_C());
			st.setString(6, transplant.getHLA_DPB1());
			st.setString(7, transplant.getHLA_DQA1());
			st.setString(8, transplant.getHLA_DQB1());
			st.setString(9, transplant.getHLA_DRB1());
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
	
	public ArrayList<Transplant> findTransplantByGenes(String HLA_A,String HLA_B,String HLA_C,String HLA_DPB1,String HLA_DQA1,String HLA_DQB1,String HLA_DRB1) throws Exception{
		Connection con = null;
		ArrayList<Transplant> results = new ArrayList<Transplant>();
		DB db = new DB();
		String sqlquery = "SELECT * FROM bioproject.transplants WHERE HLA_A= ? AND HLA_B= ? AND HLA_C= ? AND HLA_DPB1=? AND HLA_DQA1=? AND HLA_DQB1=? AND HLA_DRB1=? ;";
		
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
				results.add(new Transplant(rs.getString("type"),rs.getString("HLA_A"),rs.getString("HLA_B"),rs.getString("HLA_C"),rs.getString("HLA_DPB1"),rs.getString("HLA_DQA1"),rs.getString("HLA_DQB1"),rs.getString("HLA_DRB1"),rs.getInt("hospital_id")));
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
