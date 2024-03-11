package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IGroupHomeDAO
{
	// 주간업무보고서 리스트
	public ArrayList<WeeklyReportDTO> weeklyReportList(String memCode);
	
	// 산출물 갯수
	public Integer meetAnalCount(String memCode);
	public Integer meetDesignCount(String memCode);
	public Integer meetAvatarCount(String memCode);
	public Integer meetTestCount(String memCode);
	public Integer meetTotalCount(String memCode);
	public Integer planCount(String memCode);
	public Integer flowchartCount(String memCode);
	public Integer requestCount(String memCode);
	
	// 직무별 그룹원 목록
	public ArrayList<GroupDTO> groupHomePlan(String memCode);
	public ArrayList<GroupDTO> groupHomeDesign(String memCode);
	public ArrayList<GroupDTO> groupHomeFront(String memCode);
	public ArrayList<GroupDTO> groupHomeBack(String memCode);
	
	// 프로젝트 진행기간
	public ArrayList<OpenProjectDTO> progressPeriod(String memCode);
	
	// 프로젝트 진행기간별 비율
	public Double analyzePercent(String memCode);
	public Double designPercent(String memCode);
	public Double avatarPercent(String memCode);
	public Double testPercent(String memCode);
	
	// 팀장 평가 목록 조회
	public ArrayList<EvaluationDTO> leaderEval(String memCode);
	
	// 팀원 평가 목록 조회
	public ArrayList<EvaluationDTO> teamEval(String memCode);
	
	// 팀장 리스트 조회
	public ArrayList<EvaluationDTO> groupLeader(String memCode);
	
	// 그룹원 리스트 조회
	public ArrayList<GroupDTO> groupPersonnel(String memCode);
	
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
	
	//팀장 닉네임
	public String leaderNickNames(String memCode);
	//이탈자 닉네임
	public String leaveNickNames(String memCode);
	//교체된 팀장의 닉네임
	public String changeNickNames(String memCode);
	
	// 평가 질문
	//public Integer evalQue(@Param("que") ArrayList<String> que, @Param("memCode") String memCode);

	// 테스트
	public Integer evalInsert();
}
