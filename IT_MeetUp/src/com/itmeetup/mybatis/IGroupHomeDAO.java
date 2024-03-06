package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IGroupHomeDAO
{
	// 주간업무보고서 리스트
	public ArrayList<WeeklyReportDTO> weeklyReportList();
	
	// 산출물 갯수
	public Integer meetCount();
	public Integer planCount();
	public Integer flowchartCount();
	public Integer requestCount();
	
	// 직무별 그룹원 목록
	public ArrayList<GroupDTO> groupHomePlan();
	public ArrayList<GroupDTO> groupHomeDesign();
	public ArrayList<GroupDTO> groupHomeFront();
	public ArrayList<GroupDTO> groupHomeBack();
	
	// 프로젝트 진행기간
	public ArrayList<OpenProjectDTO> progressPeriod();
	
	// 프로젝트 진행기간별 비율
	public Double analyzePercent();
	public Double designPercent();
	public Double avatarPercent();
	public Double testPercent();
}
