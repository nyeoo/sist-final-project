package com.itmeetup.mybatis;


public class JobDTO
{
	// 주요 속성 구성 
	private  String jobCode ,jobName; 	// 직무 코드 , 직무 이름
	private int inwon;				// 인원수
	
	// getter / setter 구성 	
	
	public String getJobCode()
	{
		return jobCode;
	}
	public void setJobCode(String jobCode)
	{
		this.jobCode = jobCode;
	}
	public String getJobName()
	{
		return jobName;
	}
	public void setJobName(String jobName)
	{
		this.jobName = jobName;
	}
	public int getInwon()
	{
		return inwon;
	}
	public void setInwon(int inwon)
	{
		this.inwon = inwon;
	}
}
