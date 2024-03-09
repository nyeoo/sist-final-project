/*=====================
	ScheduleDTO.java
=====================*/
package com.itmeetup.mybatis;

public class ScheduleDTO
{
	private String ssName, sdOpCode, seStartDate, sdEndDate, memCode; 		// 단계명, 개설요청코드, 시작예정일, 종료예정일, 회원코드

	// getter / setter 구성
	public String getSsName()
	{
		return ssName;
	}

	public void setSsName(String ssName)
	{
		this.ssName = ssName;
	}

	public String getSdOpCode()
	{
		return sdOpCode;
	}

	public void setSdOpCode(String sdOpCode)
	{
		this.sdOpCode = sdOpCode;
	}

	public String getSeStartDate()
	{
		return seStartDate;
	}

	public void setSeStartDate(String seStartDate)
	{
		this.seStartDate = seStartDate;
	}

	public String getSdEndDate()
	{
		return sdEndDate;
	}

	public void setSdEndDate(String sdEndDate)
	{
		this.sdEndDate = sdEndDate;
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
