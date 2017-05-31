package model;

public class Gene {
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Gene() {
		
	}

	public Gene(String name) {
		
		this.name = name;
	}

	@Override
	public String toString() {
		return "Gene [getName()=" + getName() + "]";
	}
	
	

}
