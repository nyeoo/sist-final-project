package com.itmeetup.mybatis;

public class ProjectManagementDTO
{
	private String opCode, title, startDate, endDate, paDate, opDate, memCode;
	// 개설요청 코드, 제목, 시작일, 종료일, 참여일자, 등록일자, 회원 코드

	// getter / setter
	public String getOpCode()
	{
		return opCode;
	}

	public void setOpCode(String opCode)
	{
		this.opCode = opCode;
	}

	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getStartDate()
	{
		return startDate;
	}

	public void setStartDate(String startDate)
	{
		this.startDate = startDate;
	}

	public String getEndDate()
	{
		return endDate;
	}

	public void setEndDate(String endDate)
	{
		this.endDate = endDate;
	}

	public String getPaDate()
	{
		return paDate;
	}

	public void setPaDate(String paDate)
	{
		this.paDate = paDate;
	}

	public String getOpDate()
	{
		return opDate;
	}

	public void setOpDate(String opDate)
	{
		this.opDate = opDate;
	}

	public String getMemCode()
	{
		return memCode;
	}

	public void setMemCode(String memCode)
	{
		this.memCode = memCode;
	}
	
	
	
}
