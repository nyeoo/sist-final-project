package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IGroupSetupDAO
{
	// 그룹원 조회
	public ArrayList<GroupDTO> groupSetupList(String opcode);
	
	public ArrayList<OpenProjectDTO> groupTeamName(String opcode);
	
	public OpenProjectDTO GroupTeamNamesearchId(int code, String opcode);
	
	public int groupTeamNamemodify(String teamName, String opcode); 
}
