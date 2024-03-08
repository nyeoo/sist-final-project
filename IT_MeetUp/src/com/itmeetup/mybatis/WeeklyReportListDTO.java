/*=====================
	WeeklyReportDTO.java
=====================*/
package com.itmeetup.mybatis;

public class WeeklyReportListDTO
{
	private String wrTitle, wrDate;							// 주간업무보고명, 주간업무보고일자 
	private String tjOpCode, pcCode, piNickName, opCode;	// 개설모집코드, 참여지원코드, 닉네임
	private int countWeekly;
	
	// getter / setter 구성
	public String getWrTitle()
	{
		return wrTitle;
	}
	public int getCountWeekly()
	{
		return countWeekly;
	}
	public String getOpCode()
	{
		return opCode;
	}
	public void setOpCode(String opCode)
	{
		this.opCode = opCode;
	}
	public void setCountWeekly(int countWeekly)
	{
		this.countWeekly = countWeekly;
	}
	public void setWrTitle(String wrTitle)
	{
		this.wrTitle = wrTitle;
	}
	public String getWrDate()
	{
		return wrDate;
	}
	public void setWrDate(String wrDate)
	{
		this.wrDate = wrDate;
	}
	public String getTjOpCode()
	{
		return tjOpCode;
	}
	public void setTjOpCode(String tjOpCode)
	{
		this.tjOpCode = tjOpCode;
	}
	public String getPcCode()
	{
		return pcCode;
	}
	public void setPcCode(String pcCode)
	{
		this.pcCode = pcCode;
	}
	public String getPiNickName()
	{
		return piNickName;
	}
	public void setPiNickName(String piNickName)
	{
		this.piNickName = piNickName;
	}

	
	
	
}
