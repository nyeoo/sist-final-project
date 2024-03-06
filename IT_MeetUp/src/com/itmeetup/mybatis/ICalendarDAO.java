package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface ICalendarDAO
{
	// 일정단계상세 날짜 얻어오는 인터페이스
	public ArrayList<ScheduleDTO> allCalendar();
	
	// 업무할당된 날짜 얻어오는 인터페이스
	public ArrayList<AssignmentDTO> assCalendar();
}
