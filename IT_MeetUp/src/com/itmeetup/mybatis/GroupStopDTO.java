/*=====================
	GroupStopDTO.java
=====================*/
package com.itmeetup.mybatis;

public class GroupStopDTO
{
	private String leaDate, leaName;	// 이탈일, 이탈자
	private String lcDate, lcName;		// 교체일, 교체대상자
	private String psDate, psName;		// 중단일, 중단자
	private int leaNumber, lcNumber;	// 이탈자 번호, 팀장교체번호
	
	// getter / setter 구성
	public String getLeaDate()
	{
		return leaDate;
	}
	public void setLeaDate(String leaDate)
	{
		this.leaDate = leaDate;
	}
	public String getLeaName()
	{
		return leaName;
	}
	public void setLeaName(String leaName)
	{
		this.leaName = leaName;
	}
	public String getLcDate()
	{
		return lcDate;
	}
	public void setLcDate(String lcDate)
	{
		this.lcDate = lcDate;
	}
	public String getLcName()
	{
		return lcName;
	}
	public void setLcName(String lcName)
	{
		this.lcName = lcName;
	}
	public String getPsDate()
	{
		return psDate;
	}
	public void setPsDate(String psDate)
	{
		this.psDate = psDate;
	}
	public String getPsName()
	{
		return psName;
	}
	public void setPsName(String psName)
	{
		this.psName = psName;
	}
	public int getLeaNumber()
	{
		return leaNumber;
	}
	public void setLeaNumber(int leaNumber)
	{
		this.leaNumber = leaNumber;
	}
	public int getLcNumber()
	{
		return lcNumber;
	}
	public void setLcNumber(int lcNumber)
	{
		this.lcNumber = lcNumber;
	}
	

	

}
