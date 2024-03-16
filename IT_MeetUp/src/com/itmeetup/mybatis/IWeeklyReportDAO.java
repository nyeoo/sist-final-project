package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IWeeklyReportDAO
{
	public ArrayList<WeeklyReportListDTO> weeklyReport(String opCode);
	
	public int countWeeklyReport(String opCode);
}
