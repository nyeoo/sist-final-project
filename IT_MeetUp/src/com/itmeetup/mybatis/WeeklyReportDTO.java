/*=====================
	WeeklyReportDTO.java
=====================*/
package com.itmeetup.mybatis;

public class WeeklyReportDTO
{
	private String wrTitle, wrContent, wrPerson;	// 주간업무보고명, 주간업무보고내용, 주간업무보고자 
	private String wrFile, wrDate;		// 첨부파일경로, 주간업무보고일
	private int wrNumber;				// 주간업무보고번호
	
	// getter / setter 구성
	public String getWrTitle()
	{
		return wrTitle;
	}
	public void setWrTitle(String wrTitle)
	{
		this.wrTitle = wrTitle;
	}
	public String getWrContent()
	{
		return wrContent;
	}
	public void setWrContent(String wrContent)
	{
		this.wrContent = wrContent;
	}
	public String getWrPerson()
	{
		return wrPerson;
	}
	public void setWrPerson(String wrPerson)
	{
		this.wrPerson = wrPerson;
	}
	public String getWrFile()
	{
		return wrFile;
	}
	public void setWrFile(String wrFile)
	{
		this.wrFile = wrFile;
	}
	public String getWrDate()
	{
		return wrDate;
	}
	public void setWrDate(String wrDate)
	{
		this.wrDate = wrDate;
	}
	public int getWrNumber()
	{
		return wrNumber;
	}
	public void setWrNumber(int wrNumber)
	{
		this.wrNumber = wrNumber;
	}
	
	
}
