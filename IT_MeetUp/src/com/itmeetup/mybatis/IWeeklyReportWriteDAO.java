package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IWeeklyReportWriteDAO
{
	public ArrayList<WeeklyReportDTO> weeklyReportWrite(String opCode);
	public int insertWeeklyReport(WeeklyReportDTO dto);
	
}
