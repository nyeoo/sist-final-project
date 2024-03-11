package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IGroupSetupDAO
{
	// 그룹원 조회
	public ArrayList<GroupDTO> groupSetupList(String memCode);
	
	// 팀명 조회
	public ArrayList<OpenProjectDTO> groupTeamName(String memCode);
	
	// 팀명을 수정하기 위해 code검색
	public OpenProjectDTO GroupTeamNamesearchId(String memCode);
	
	// 팀명수정
	public int groupTeamNamemodify(@Param("teamName") String teamName, @Param("memCode") String memCode);
	
	// 팀장 리스트 조회
	public ArrayList<EvaluationDTO> groupLeaders(String memCode);

	// 회원의 참여코드 / 개설요청코드
	public String teamPcCode(String memCode);
	public String teamOpCode(String memCode);
	
	// 팀장 참여코드 / 개설요청코드
	public String leaderPcCode(String leaderMemCode);
	public String leaderMemCode(String opCode);
	
	// 팀장 이탈자 참여코드
	public String leaveLeader(String leaderPcCode);
	
	// 팀장 교체 참여코드 / 팀장 교체 개설요청코드
	public String changeLeaderPcCode(String opCode);
	public String changeLeaderMemCode(String opCode);
}