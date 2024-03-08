/*=====================
	WeeklyReportWriteDTO.java
=====================*/
package com.itmeetup.mybatis;

public class WeeklyReportDTO
{
	private String wrTitle, wrDate, wrContent;
	private String tjOpCode, pcCode, piNickName, opCode, memCode;
	private int countWeekly, wrNo;
	
	// getter / setter 구성
	public String getWrTitle()
	{
		return wrTitle;
	}
	
	public String getMemCode()
	{
		return memCode;
	}

	public void setMemCode(String memCode)
	{
		this.memCode = memCode;
	}

	public String getOpCode()
	{
		return opCode;
	}
	public void setOpCode(String opCode)
	{
		this.opCode = opCode;
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
	public String getWrContent()
	{
		return wrContent;
	}
	public void setWrContent(String wrContent)
	{
		this.wrContent = wrContent;
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
	public int getCountWeekly()
	{
		return countWeekly;
	}
	public void setCountWeekly(int countWeekly)
	{
		this.countWeekly = countWeekly;
	}
	public int getWrNo()
	{
		return wrNo;
	}
	public void setWrNo(int wrNo)
	{
		this.wrNo = wrNo;
	}
	

	

	
}
