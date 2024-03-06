/*=====================
	ReportListDTO.java
=====================*/
package com.itmeetup.mybatis;

public class ReportListDTO
{
	private String repTitle, repDate, repFile;	// 업무보고 제목, 보고일 ,보고파일	
	private String sdOpCode, assName, piNickName, ouName, ssName, ssCode; 	// 개설요청코드 , 업무명, 닉네임, 산출물명, 일정단계명, 일정단계코드
	private String wsName, appDate; 	// 업무결재 상태, 업무결재 일자
	private int repNumber;		//업무보고 번호
	
	// getter / setter 구성
	public String getRepTitle()
	{
		return repTitle;
	}
	public void setRepTitle(String repTitle)
	{
		this.repTitle = repTitle;
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
	public String getSdOpCode()
	{
		return sdOpCode;
	}
	public void setSdOpCode(String sdOpCode)
	{
		this.sdOpCode = sdOpCode;
	}
	public String getAssName()
	{
		return assName;
	}
	public void setAssName(String assName)
	{
		this.assName = assName;
	}
	public String getPiNickName()
	{
		return piNickName;
	}
	public void setPiNickName(String piNickName)
	{
		this.piNickName = piNickName;
	}
	public String getOuName()
	{
		return ouName;
	}
	public void setOuName(String ouName)
	{
		this.ouName = ouName;
	}
	public String getSsName()
	{
		return ssName;
	}
	public void setSsName(String ssName)
	{
		this.ssName = ssName;
	}
	public String getSsCode()
	{
		return ssCode;
	}
	public void setSsCode(String ssCode)
	{
		this.ssCode = ssCode;
	}
	public String getWsName()
	{
		return wsName;
	}
	public void setWsName(String wsName)
	{
		this.wsName = wsName;
	}
	public String getAppDate()
	{
		return appDate;
	}
	public void setAppDate(String appDate)
	{
		this.appDate = appDate;
	}
	public int getRepNumber()
	{
		return repNumber;
	}
	public void setRepNumber(int repNumber)
	{
		this.repNumber = repNumber;
	}
	
	

	
	
		
	
	
}
