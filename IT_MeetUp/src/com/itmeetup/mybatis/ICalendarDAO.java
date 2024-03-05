package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface ICalendarDAO
{
	public ArrayList<ScheduleDTO> calProgress();
	public ArrayList<ScheduleDTO> calDesign();
	public ArrayList<ScheduleDTO> calAvatar();
	public ArrayList<ScheduleDTO> calTest();
}
