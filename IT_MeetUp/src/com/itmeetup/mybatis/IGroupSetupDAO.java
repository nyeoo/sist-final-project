package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IGroupSetupDAO
{
//	// 그룹원 조회
//		public ArrayList<GroupDTO> groupSetupList();
//		
//		// 팀명 조회
//		public ArrayList<OpenProjectDTO> groupTeamName();
//		
//		// 팀명을 수정하기 위해 code검색
//		public OpenProjectDTO GroupTeamNamesearchId(int code);
//		
//		// 팀명수정
//		public int groupTeamNamemodify(String teamName);
		
	// 그룹원 조회
	public ArrayList<GroupDTO> groupSetupList(String opcode);
	
	// 팀명 조회
	public ArrayList<OpenProjectDTO> groupTeamName(String opcode);
	
	// 팀명을 수정하기 위해 code검색
	public OpenProjectDTO GroupTeamNamesearchId(String opcode);
	
	// 팀명수정
	public int groupTeamNamemodify(@Param("teamName") String teamName, @Param("opcode") String opcode);
}