package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IScheduleDAO
{
	public ArrayList<ScheduleDTO> scheduleList(String opCode);
}
