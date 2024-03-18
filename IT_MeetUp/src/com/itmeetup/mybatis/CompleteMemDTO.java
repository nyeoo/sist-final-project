package com.itmeetup.mybatis;

public class CompleteMemDTO
{
	private String memCode, jobCode, proImg, nickname, evaStatus, leader;
	
	// getter / setter
	public String getJobCode()
	{
		return jobCode;
	}

	public String getMemCode()
	{
		return memCode;
	}

	public void setMemCode(String memCode)
	{
		this.memCode = memCode;
	}

	public void setJobCode(String jobCode)
	{
		this.jobCode = jobCode;
	}

	public String getProImg()
	{
		return proImg;
	}

	public void setProImg(String proImg)
	{
		this.proImg = proImg;
	}

	public String getNickname()
	{
		return nickname;
	}

	public void setNickname(String nickname)
	{
		this.nickname = nickname;
	}

	public String getEvaStatus()
	{
		return evaStatus;
	}

	public void setEvaStatus(String evaStatus)
	{
		this.evaStatus = evaStatus;
	}

	public String getLeader()
	{
		return leader;
	}

	public void setLeader(String leader)
	{
		this.leader = leader;
	}
	

	
}
