package com.itmeetup.mybatis;

public class MeetDTO
{
	private String meetCode, meetName;	// 모임방식 코드, 모임방식 명

	
	// getter / setter
	public String getMeetCode()
	{
		return meetCode;
	}

	public void setMeetCode(String meetCode)
	{
		this.meetCode = meetCode;
	}

	public String getMeetName()
	{
		return meetName;
	}

	public void setMeetName(String meetName)
	{
		this.meetName = meetName;
	}
}
