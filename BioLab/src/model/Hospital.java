package model;

public class Hospital {
	
	private String name;
	private String city;
	private String area;
	private String address;
	private String phone;
	
	

	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public String getArea() {
		return area;
	}



	public void setArea(String area) {
		this.area = area;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public Hospital() {
		// TODO Auto-generated constructor stub
	}



	public Hospital(String name, String city, String area, String address, String phone) {
		this.name = name;
		this.city = city;
		this.area = area;
		this.address = address;
		this.phone = phone;
	}



	@Override
	public String toString() {
		return "Hospital [getName()=" + getName() + ", getCity()=" + getCity() + ", getArea()=" + getArea()
				+ ", getAddress()=" + getAddress() + ", getPhone()=" + getPhone() + "]";
	}
	
	

}
