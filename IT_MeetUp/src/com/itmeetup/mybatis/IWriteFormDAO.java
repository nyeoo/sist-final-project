package com.itmeetup.mybatis;

public interface IWriteFormDAO
{
	// 프로젝트  추가
	public Integer addProject(WriteFormDTO dto);
	// 상세 일정, 역할별 인원수 추가
	public Integer addperiod(WriteFormDTO dto);				
}
