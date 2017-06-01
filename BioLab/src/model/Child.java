package model;

import java.sql.Date;

public class Child extends Patient {
	
	private Date dateOfBirth;

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Child() {
		super();
	}

	public Child(String patientId, String name, String surname, String hLA_A, String hLA_B, String hLA_C,
			String hLA_DPB1, String hLA_DQA1, String hLA_DQB1, String hLA_DRB1, Date dateOfBirth) {
		super(patientId, name, surname, hLA_A, hLA_B, hLA_C, hLA_DPB1, hLA_DQA1, hLA_DQB1, hLA_DRB1);
		this.dateOfBirth=dateOfBirth;
	}

}
