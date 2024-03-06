package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IGroupHomeDAO
{
	// 주간업무보고서 리스트
	public ArrayList<WeeklyReportDTO> weeklyReportList(String opCode);
	
	// 산출물 갯수
	public Integer meetCount(String opCode);
	public Integer planCount(String opCode);
	public Integer flowchartCount(String opCode);
	public Integer requestCount(String opCode);
	
	// 직무별 그룹원 목록
	public ArrayList<GroupDTO> groupHomePlan(String opCode);
	public ArrayList<GroupDTO> groupHomeDesign(String opCode);
	public ArrayList<GroupDTO> groupHomeFront(String opCode);
	public ArrayList<GroupDTO> groupHomeBack(String opCode);
	
	// 프로젝트 진행기간
	public ArrayList<OpenProjectDTO> progressPeriod(String opCode);
	
	// 프로젝트 진행기간별 비율
	public Double analyzePercent(String opCode);
	public Double designPercent(String opCode);
	public Double avatarPercent(String opCode);
	public Double testPercent(String opCode);
}
