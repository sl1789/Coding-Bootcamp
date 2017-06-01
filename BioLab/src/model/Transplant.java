package model;

public class Transplant {
	
	private String type;
	private String HLA_A;
	private String HLA_B;
	private String HLA_C;
	private String HLA_DPB1;
	private String HLA_DQA1;
	private String HLA_DQB1;
	private String HLA_DRB1;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getHLA_A() {
		return HLA_A;
	}
	public void setHLA_A(String hLA_A) {
		HLA_A = hLA_A;
	}
	public String getHLA_B() {
		return HLA_B;
	}
	public void setHLA_B(String hLA_B) {
		HLA_B = hLA_B;
	}
	public String getHLA_C() {
		return HLA_C;
	}
	public void setHLA_C(String hLA_C) {
		HLA_C = hLA_C;
	}
	public String getHLA_DPB1() {
		return HLA_DPB1;
	}
	public void setHLA_DPB1(String hLA_DPB1) {
		HLA_DPB1 = hLA_DPB1;
	}
	public String getHLA_DQA1() {
		return HLA_DQA1;
	}
	public void setHLA_DQA1(String hLA_DQA1) {
		HLA_DQA1 = hLA_DQA1;
	}
	public String getHLA_DQB1() {
		return HLA_DQB1;
	}
	public void setHLA_DQB1(String hLA_DQB1) {
		HLA_DQB1 = hLA_DQB1;
	}
	public String getHLA_DRB1() {
		return HLA_DRB1;
	}
	public void setHLA_DRB1(String hLA_DRB1) {
		HLA_DRB1 = hLA_DRB1;
	}
	
	public Transplant(String type, String hLA_A, String hLA_B, String hLA_C, String hLA_DPB1, String hLA_DQA1,
			String hLA_DQB1, String hLA_DRB1) {
		this.type = type;
		HLA_A = hLA_A;
		HLA_B = hLA_B;
		HLA_C = hLA_C;
		HLA_DPB1 = hLA_DPB1;
		HLA_DQA1 = hLA_DQA1;
		HLA_DQB1 = hLA_DQB1;
		HLA_DRB1 = hLA_DRB1;
	}
	@Override
	public String toString() {
		return "Transplant [getType()=" + getType() + ", getHLA_A()=" + getHLA_A() + ", getHLA_B()=" + getHLA_B()
				+ ", getHLA_C()=" + getHLA_C() + ", getHLA_DPB1()=" + getHLA_DPB1() + ", getHLA_DQA1()=" + getHLA_DQA1()
				+ ", getHLA_DQB1()=" + getHLA_DQB1() + ", getHLA_DRB1()=" + getHLA_DRB1() + "]";
	}
	
	
	
	

}
