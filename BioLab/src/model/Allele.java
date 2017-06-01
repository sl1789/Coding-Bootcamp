package model;

public class Allele {
	
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Allele() {
		
	}

	public Allele(String name) {
		
		this.name = name;
	}

	@Override
	public String toString() {
		return "Allele [getName()=" + getName() + "]";
	}
	
	

}
