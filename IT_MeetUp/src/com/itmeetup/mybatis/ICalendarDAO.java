package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface ICalendarDAO
{
	 public ArrayList<ScheduleDTO> allCalendar();
	 
	 public ArrayList<AssignmentDTO> assCalendar();
}
