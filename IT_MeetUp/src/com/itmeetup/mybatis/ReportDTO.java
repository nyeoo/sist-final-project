/*=====================
	ReportDTO.java
=====================*/
package com.itmeetup.mybatis;

public class ReportDTO
{
	private String repTitle, repContent, atName, repPerson;		// 업무보고제목, 업무보고내용, 실제 사용기술명, 업무보고잔
	private String repStartDate, repEndDate, repDate, repFile; 	// 업무시작일, 업무종료일, 보고일, 첨부보고파일경로
	private int repNumber, atNumber; 							// 업무보고번호, 실제사용기술번호 
	
	
	// getter / setter 구성
	public String getRepTitle()
	{
		return repTitle;
	}
	public void setRepTitle(String repTitle)
	{
		this.repTitle = repTitle;
	}
	public String getRepContent()
	{
		return repContent;
	}
	public void setRepContent(String repContent)
	{
		this.repContent = repContent;
	}
	public String getAtName()
	{
		return atName;
	}
	public void setAtName(String atName)
	{
		this.atName = atName;
	}
	public String getRepPerson()
	{
		return repPerson;
	}
	public void setRepPerson(String repPerson)
	{
		this.repPerson = repPerson;
	}
	public String getRepStartDate()
	{
		return repStartDate;
	}
	public void setRepStartDate(String repStartDate)
	{
		this.repStartDate = repStartDate;
	}
	public String getRepEndDate()
	{
		return repEndDate;
	}
	public void setRepEndDate(String repEndDate)
	{
		this.repEndDate = repEndDate;
	}
	public String getRepDate()
	{
		return repDate;
	}
	public void setRepDate(String repDate)
	{
		this.repDate = repDate;
	}
	public String getRepFile()
	{
		return repFile;
	}
	public void setRepFile(String repFile)
	{
		this.repFile = repFile;
	}
	public int getRepNumber()
	{
		return repNumber;
	}
	public void setRepNumber(int repNumber)
	{
		this.repNumber = repNumber;
	}
	public int getAtNumber()
	{
		return atNumber;
	}
	public void setAtNumber(int atNumber)
	{
		this.atNumber = atNumber;
	}
	
	
	
}
