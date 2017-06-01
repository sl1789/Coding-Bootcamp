package model;

public class Mother extends Patient {

	private int afm;

	public int getAfm() {
		return afm;
	}

	public void setAfm(int afm) {
		this.afm = afm;
	}

	public Mother() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Mother(String patientId, String name, String surname, String hLA_A, String hLA_B, String hLA_C,
			String hLA_DPB1, String hLA_DQA1, String hLA_DQB1, String hLA_DRB1,int afm) {
		super(patientId, name, surname, hLA_A, hLA_B, hLA_C, hLA_DPB1, hLA_DQA1, hLA_DQB1, hLA_DRB1);
		this.afm=afm;
	}

	@Override
	public String toString() {
		return "Mother [getAfm()=" + getAfm() + "]";
	}



	

	
	
	

}
