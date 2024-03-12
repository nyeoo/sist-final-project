package com.itmeetup.mybatis;

public class CompleteProjectDTO
{
	// 주요 속성 구성
	private String title, content, teamName, catName, cpCode;

	// getter / setter 구성
	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public String getTeamName()
	{
		return teamName;
	}

	public void setTeamName(String teamName)
	{
		this.teamName = teamName;
	}

	public String getCatName()
	{
		return catName;
	}

	public void setCatName(String catName)
	{
		this.catName = catName;
	}

	public String getCpCode()
	{
		return cpCode;
	}

	public void setCpCode(String cpCode)
	{
		this.cpCode = cpCode;
	}
	
	
}
