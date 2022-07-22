package duan_crm.model;

public class ProjectModel {
	private int id;
	private String projectName;
	private String description;
	private String startDate;
	private String endDate;
	private int idUser;
	
	public ProjectModel() {
		// TODO Auto-generated constructor stub
	}
	
	public ProjectModel(int id, String projectName, String description, String startDate, String endDate, int idUser) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.projectName = projectName;
		this.description = description;
		this.startDate = startDate;
		this.endDate = endDate;
		this.idUser = idUser;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	
	
}
