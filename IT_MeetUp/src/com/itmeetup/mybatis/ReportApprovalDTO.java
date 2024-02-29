/*=====================
	ReportApprovalDTO.java
=====================*/
package com.itmeetup.mybatis;

public class ReportApprovalDTO
{
	private String appApprovaler, appDate, wsName;		// 업무결재자, 업무결재일,업무상태명
	private int appNumber;								// 업무결재번호
	
	
	// getter / setter 구성
	public String getAppApprovaler()
	{
		return appApprovaler;
	}
	public void setAppApprovaler(String appApprovaler)
	{
		this.appApprovaler = appApprovaler;
	}
	public String getAppDate()
	{
		return appDate;
	}
	public void setAppDate(String appDate)
	{
		this.appDate = appDate;
	}
	public String getWsName()
	{
		return wsName;
	}
	public void setWsName(String wsName)
	{
		this.wsName = wsName;
	}
	public int getAppNumber()
	{
		return appNumber;
	}
	public void setAppNumber(int appNumber)
	{
		this.appNumber = appNumber;
	}
	
	
	

}
