package com.itmeetup.mybatis;

public class NameCardDTO
{
	private String memCode, piId, nickname, jobName, intro;		// 회원 코드, 회원 아이디, 회원 닉네임, 직무명, 짧은 소개글
	private String skCode, skName;								// 스킬 코드, 스킬 명
	private String opCode, title, content, teamName;			// 개설요청 코드, 제목, 내용, 팀명					
	
	// getter / setter 
	public String getMemCode()
	{
		return memCode;
	}
	public void setMemCode(String memCode)
	{
		this.memCode = memCode;
	}
	public String getPiId()
	{
		return piId;
	}
	public void setPiId(String piId)
	{
		this.piId = piId;
	}
	public String getNickname()
	{
		return nickname;
	}
	public void setNickname(String nickname)
	{
		this.nickname = nickname;
	}
	public String getJobName()
	{
		return jobName;
	}
	public void setJobName(String jobName)
	{
		this.jobName = jobName;
	}
	public String getIntro()
	{
		return intro;
	}
	public void setIntro(String intro)
	{
		this.intro = intro;
	}
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
	public String getOpCode()
	{
		return opCode;
	}
	public void setOpCode(String opCode)
	{
		this.opCode = opCode;
	}
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
	
	
	
}
