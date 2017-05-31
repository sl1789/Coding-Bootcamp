package model;

import java.sql.Date;

public class Examination {
	private Date date;
	private String type;
	private String notes;
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
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
	public Examination(Date date, String type, String notes) {
		
		this.date = date;
		this.type = type;
		this.notes = notes;
	}
	@Override
	public String toString() {
		return "Examination [getDate()=" + getDate() + ", getType()=" + getType() + ", getNotes()=" + getNotes() + "]";
	}
	
	

}
