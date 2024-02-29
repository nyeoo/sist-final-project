/*=====================
	AssignmentDTO.java
=====================*/
package com.itmeetup.mybatis;

public class AssignmentDTO
{
	private String assCode, assName, assContent; 		// 업무할당 코드, 업무할당명, 업무할당 내용 
	private String assIndicator, assCharger;			// 업무지시자, 업무담당자
	private String assStartDate, assEndDate, assDate;	// 업무시작지시일, 업무종료지시일, 업무할당일
	private String assFile, outName; 					// 할당첨무파일경로, 할당산출물 명
	
	
	// getter / setter 구성
	public String getAssCode()
	{
		return assCode;
	}
	public void setAssCode(String assCode)
	{
		this.assCode = assCode;
	}
	public String getAssName()
	{
		return assName;
	}
	public void setAssName(String assName)
	{
		this.assName = assName;
	}
	public String getAssContent()
	{
		return assContent;
	}
	public void setAssContent(String assContent)
	{
		this.assContent = assContent;
	}
	public String getAssIndicator()
	{
		return assIndicator;
	}
	public void setAssIndicator(String assIndicator)
	{
		this.assIndicator = assIndicator;
	}
	public String getAssCharger()
	{
		return assCharger;
	}
	public void setAssCharger(String assCharger)
	{
		this.assCharger = assCharger;
	}
	public String getAssStartDate()
	{
		return assStartDate;
	}
	public void setAssStartDate(String assStartDate)
	{
		this.assStartDate = assStartDate;
	}
	public String getAssEndDate()
	{
		return assEndDate;
	}
	public void setAssEndDate(String assEndDate)
	{
		this.assEndDate = assEndDate;
	}
	public String getAssDate()
	{
		return assDate;
	}
	public void setAssDate(String assDate)
	{
		this.assDate = assDate;
	}
	public String getAssFile()
	{
		return assFile;
	}
	public void setAssFile(String assFile)
	{
		this.assFile = assFile;
	}
	public String getOutName()
	{
		return outName;
	}
	public void setOutName(String outName)
	{
		this.outName = outName;
	}
	
	
}
