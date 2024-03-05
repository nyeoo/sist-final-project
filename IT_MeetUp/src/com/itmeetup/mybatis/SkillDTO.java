package com.itmeetup.mybatis;

public class SkillDTO
{
	private String skCode, skName, skScCode;	// 기술코드, 기술명, 기술분류코드

	
	// getter / setter 구성
	public String getSkCode()
	{
		return skCode;
	}

	public void setSkCode(String skCode)
	{
		this.skCode = skCode;
	}

	public String getSkName()
	{
		return skName;
	}

	public void setSkName(String skName)
	{
		this.skName = skName;
	}

	public String getSkScCode()
	{
		return skScCode;
	}

	public void setSkScCode(String skScCode)
	{
		this.skScCode = skScCode;
	}
}
