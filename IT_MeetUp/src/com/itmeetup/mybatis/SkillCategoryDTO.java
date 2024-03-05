package com.itmeetup.mybatis;

public class SkillCategoryDTO
{
	private String scCode, scName;	// 기술분류코드, 기술 분류명

	
	// getter / setter
	public String getScCode()
	{
		return scCode;
	}

	public void setScCode(String scCode)
	{
		this.scCode = scCode;
	}

	public String getScName()
	{
		return scName;
	}

	public void setScName(String scName)
	{
		this.scName = scName;
	}
}
