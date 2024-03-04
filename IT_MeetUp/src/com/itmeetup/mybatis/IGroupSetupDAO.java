package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IGroupSetupDAO
{
	// 그룹원 조회
	public ArrayList<GroupDTO> groupSetupList();
	
	public ArrayList<OpenProjectDTO> groupTeamName();
	
	public OpenProjectDTO GroupTeamNamesearchId(int code);
	
	public int groupTeamNamemodify(String teamName); 
}
