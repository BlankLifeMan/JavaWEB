package cn.niit.jdbc.domain;

public class WorkExperience {
	private int workID;
	private String corporateName;
	private String positionTitle;
	private String workCity;
	private String workingHours;
	private String technology;
	private String positionDescribe;
	private String name;
public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
public int getWorkID() {
		return workID;
	}
	public void setWorkID(int workID) {
		this.workID = workID;
	}
	public String getCorporateName() {
		return corporateName;
	}
	public void setCorporateName(String corporateName) {
		this.corporateName = corporateName;
	}
	public String getPositionTitle() {
		return positionTitle;
	}
	public void setPositionTitle(String positionTitle) {
		this.positionTitle = positionTitle;
	}
	public String getWorkCity() {
		return workCity;
	}
	public void setWorkCity(String workCity) {
		this.workCity = workCity;
	}
	public String getWorkingHours() {
		return workingHours;
	}
	public void setWorkingHours(String workingHours) {
		this.workingHours = workingHours;
	}
	public String getTechnology() {
		return technology;
	}
	public void setTechnology(String technology) {
		this.technology = technology;
	}
	public String getPositionDescribe() {
		return positionDescribe;
	}
	public void setPositionDescribe(String positionDescribe) {
		this.positionDescribe = positionDescribe;
	}

}
