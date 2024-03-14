package com.itmeetup.mybatis;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	public String leavePcCodes(String memCode);
	
	//교체된 팀장의 닉네임
	public String changeNickNames(String memCode);
	
	// 평가자 pc코드
	public String evalGroupPcCode(String memCode);
	
	// 리더 pc코드
	public String leaderPcCodes(String memCode);
	
	// 평가 질문
	public Integer evalAdd1(@Param("evalua1") List<String> evalQue1, @Param("evapcCode") String memCode);
	public Integer evalAdd2(@Param("evalua2") List<String> evalQue2, @Param("evapcCode") String memCode);
	public Integer evalAdd3(@Param("evalua3") List<String> evalQue3, @Param("evapcCode") String memCode);
	public Integer evalAdd4(@Param("evalua4") List<String> evalQue4, @Param("evapcCode") String memCode);
	public Integer evalAdd5(@Param("evalua5") List<String> grLeader, @Param("evapcCode") String memCode);
	
	public List<MemberDTO> partCheckTeamMem(String memCode);
	
}
