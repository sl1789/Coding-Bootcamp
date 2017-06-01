package model;

import java.sql.Date;

public class Child extends Patient {
	
	private String dateOfBirth;
	private String mother_id;

	public String getMother_id() {
		return mother_id;
	}

	public void setMother_id(String mother_id) {
		this.mother_id = mother_id;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Child() {
		super();
	}

	public Child(String patientId, String name, String surname, String hLA_A, String hLA_B, String hLA_C,
			String hLA_DPB1, String hLA_DQA1, String hLA_DQB1, String hLA_DRB1, String dateOfBirth,String mother_id) {
		super(patientId, name, surname, hLA_A, hLA_B, hLA_C, hLA_DPB1, hLA_DQA1, hLA_DQB1, hLA_DRB1);
		this.dateOfBirth=dateOfBirth;
		this.mother_id= mother_id;
	}

}
