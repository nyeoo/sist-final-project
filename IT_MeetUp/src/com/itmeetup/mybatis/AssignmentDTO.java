/*=====================
	AssignmentDTO.java
=====================*/
package com.itmeetup.mybatis;

public class AssignmentDTO
{
	private String sdOpCode, assCode, assName, assContent; 		// 팀코드, 업무할당 코드, 업무할당명, 업무할당 내용 
	private String indicator, charger, piNickName;				// 업무지시자, 업무담당자, 업무 담당자 닉네임
	private String assStartDate, assEndDate, assDate;			// 업무시작지시일, 업무종료지시일, 업무할당일
	private String assFile, assOuCode, ouName;					// 할당첨무파일경로, 산출물 코드, 할당산출물 명
	private String assSdNo, ssName, memCode, leaPcCode;			// 기간 상세 코드, 일정단계명, 회원코드, 이탈여부코드
	
	
	// getter / setter 구성
	public String getSdOpCode()
	{
		return sdOpCode;
	}
	public void setSdOpCode(String sdOpCode)
	{
		this.sdOpCode = sdOpCode;
	}
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
	public String getIndicator()
	{
		return indicator;
	}
	public void setIndicator(String indicator)
	{
		this.indicator = indicator;
	}
	public String getCharger()
	{
		return charger;
	}
	public void setCharger(String charger)
	{
		this.charger = charger;
	}
	public String getPiNickName()
	{
		return piNickName;
	}
	public void setPiNickName(String piNickName)
	{
		this.piNickName = piNickName;
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
	public String getAssOuCode()
	{
		return assOuCode;
	}
	public void setAssOuCode(String assOuCode)
	{
		this.assOuCode = assOuCode;
	}
	public String getOuName()
	{
		return ouName;
	}
	public void setOuName(String ouName)
	{
		this.ouName = ouName;
	}
	public String getAssSdNo()
	{
		return assSdNo;
	}
	public void setAssSdNo(String assSdNo)
	{
		this.assSdNo = assSdNo;
	}
	public String getSsName()
	{
		return ssName;
	}
	public void setSsName(String ssName)
	{
		this.ssName = ssName;
	}
	public String getMemCode()
	{
		return memCode;
	}
	public void setMemCode(String memCode)
	{
		this.memCode = memCode;
	}
	public String getLeaPcCode()
	{
		return leaPcCode;
	}
	public void setLeaPcCode(String leaPcCode)
	{
		this.leaPcCode = leaPcCode;
	}
	

	
	

	
	
	
	
}
