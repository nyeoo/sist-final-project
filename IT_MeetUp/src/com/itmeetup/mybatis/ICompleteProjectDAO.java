package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface ICompleteProjectDAO
{
	// 완료된 프로젝트 목록 페이지
	public ArrayList<CompleteProjectDTO> cpList(@Param("start") int start, @Param("end") int end, @Param("category") String category);
	public int getDataCount(@Param("category") String category);
	public ArrayList<CategoryDTO> catList();
	
	
	// 완료된 프로젝트 상세 페이지
	public CompleteProjectDTO completeProjectDetail(@Param("cpCode") String cpCode);
	public ArrayList<CompleteMemDTO> memList(@Param("cpCode") String cpCode);
	public ArrayList<SkillDTO> completeProjectSkill(@Param("cpCode") String cpCode);
	public CompleteProjectDTO completeProjectPeriod(@Param("cpCode") String cpCode);
	public ArrayList<ScheduleDTO> scheduleList(@Param("cpCode") String cpCode);
	public int minutesCount(@Param("cpCode") String cpCode);
	public int assignmentCount(@Param("cpCode") String cpCode);
	public int reportCount(@Param("cpCode") String cpCode);
	public int taskCount(@Param("cpCode") String cpCode);
}
