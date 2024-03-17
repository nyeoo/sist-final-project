package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

public interface IWeeklyReportDAO
{
	public ArrayList<WeeklyReportListDTO> weeklyReport(@Param("opCode") String opCode, @Param("start") int start, @Param("end") int end);
	
	public int countWeeklyReport(String opCode);
}
