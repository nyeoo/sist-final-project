package com.itmeetup.mybatis;


public class JobDTO
{
	// 주요 속성 구성 
	private  String jobCode ,jobName ,inwon, tjno , count; 	// 직무 코드 , 직무 이름, 구성직무번호

	
	//private int inwon;				// 인원수
	
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
//	
//	public int getInwon()
//	{
//		return inwon;
//	}
//	public void setInwon(int inwon)
//	{
//		this.inwon = inwon;
//	}
	public String getInwon()
	{
		return inwon;
	}
	public void setInwon(String inwon)
	{
		this.inwon = inwon;
	}
	public String getTjno()
	{
		return tjno;
	}
	public void setTjno(String tjno)
	{
		this.tjno = tjno;
	}
	public String getCount()
	{
		return count;
	}
	public void setCount(String count)
	{
		this.count = count;
	}

	
}
