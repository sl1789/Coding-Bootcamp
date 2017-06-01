package model;

import java.sql.Date;

public class Examination {
	private String fk_username;
	private String date;
	private String type;
	private String notes;
	private String patient_id;
	
	public String getFk_username() {
		return fk_username;
	}
	public void setFk_username(String fk_username) {
		this.fk_username = fk_username;
	}
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public Examination() {
		
	}
	public Examination(String fk_username,String date, String type, String notes,String patient_id) {
		this.fk_username= fk_username;
		this.date = date;
		this.type = type;
		this.notes = notes;
		this.patient_id= patient_id;
	}
	@Override
	public String toString() {
		return "Examination [getDate()=" + getDate() + ", getType()=" + getType() + ", getNotes()=" + getNotes() + "]";
	}
	
	

}
