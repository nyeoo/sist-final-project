package com.itmeetup.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface IWriteFormDAO
{
	// 프로젝트  입력
	public Integer addProject(WriteFormDTO dto);
	
	// 상세 일정, 역할별 인원수 입력
	public Integer addperiod(WriteFormDTO dto);
	
	// 프로젝트 희망 기술 입력 
	public Integer addSkill(@Param("hopeskills") List<String> hopeskills , @Param("lastCode") String lastCode);
}
