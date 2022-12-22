package dto;

import java.io.Serializable;

public class team implements Serializable{	
		
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String name;
	private String home;
	private String filed;
	private String coach;
	private String filename;
	
	public team() {
		super();
	}
	
	public team(String name, String home, String filed, String coach) {
		this.name = name;
		this.setHome(home);
		this.setFiled(filed);
		this.setCoach(coach);
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getHome() {
		return home;
	}

	public void setHome(String home) {
		this.home = home;
	}

	public String getFiled() {
		return filed;
	}

	public void setFiled(String filed) {
		this.filed = filed;
	}

	public String getCoach() {
		return coach;
	}

	public void setCoach(String coach) {
		this.coach = coach;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
}
