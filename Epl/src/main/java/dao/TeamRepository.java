package dao;

import java.util.ArrayList;

import dto.team;

public class TeamRepository {

		private ArrayList<team> listOfTeams = new ArrayList<team>();
		private static TeamRepository instance = new TeamRepository();
		
		public static TeamRepository getInstance() {
			return instance;
		}
		
	public TeamRepository() {
		team seoul = new team("서울FC", "서울", "잠실주경기장", "김상문");
		
		listOfTeams.add(seoul);
	}
	
	public ArrayList<team> getAllName() {
		return listOfTeams;
	}

	public team getteamById(String name) {
		team teamById = null;

		for (int i = 0; i < listOfTeams.size(); i++) {
			team team = listOfTeams.get(i);
			if (team != null && team.getName() != null && team.getName().equals(name)) {
				teamById = team;
				break;
			}
		}
		return teamById;
	}
	public void addteam(team team) {
		listOfTeams.add(team);
	}
}

	
	
