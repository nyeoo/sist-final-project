package com.itmeetup.mybatis;

public class PickDTO
{
	//주요속성
	private String tjno ,nickName , RegDate,CheckDate,memCode
	  ,jCode ,jName,tjnum;


	// getter /setter
	
	
	public String getTjno()
	{
		return tjno;
	}

	public String getTjnum()
	{
		return tjnum;
	}

	public void setTjnum(String tjnum)
	{
		this.tjnum = tjnum;
	}

	public void setTjno(String tjno)
	{
		this.tjno = tjno;
	}

	public String getNickName()
	{
		return nickName;
	}

	public void setNickName(String nickName)
	{
		this.nickName = nickName;
	}

	public String getRegDate()
	{
		return RegDate;
	}

	public void setRegDate(String regDate)
	{
		RegDate = regDate;
	}

	public String getCheckDate()
	{
		return CheckDate;
	}

	public void setCheckDate(String checkDate)
	{
		CheckDate = checkDate;
	}

	public String getMemCode()
	{
		return memCode;
	}

	public void setMemCode(String memCode)
	{
		this.memCode = memCode;
	}

	public String getjCode()
	{
		return jCode;
	}

	public void setjCode(String jCode)
	{
		this.jCode = jCode;
	}

	public String getjName()
	{
		return jName;
	}

	public void setjName(String jName)
	{
		this.jName = jName;
	}

	
    
	
	
}
