package com.itmeetup.mybatis;

import java.util.ArrayList;

public class JobDTO
{
	// 주요 속성 구성 
	private  String jobCode ; 	// 직무 코드
	private int inwon;			// 인원수
	private ArrayList<String> job; // 직무 이름 

	// gett/ setter 구성 	
	public String getJobCode()
	{
		return jobCode;
	}
	public void setJobCode(String jobCode)
	{
		this.jobCode = jobCode;
	}
	public int getInwon()
	{
		return inwon;
	}
	public void setInwon(int inwon)
	{
		this.inwon = inwon;
	}
	
	public ArrayList<String> getJob()
	{
		return job;
	}
	public void setJob(ArrayList<String> job)
	{
		this.job = job;
	}
	
	
}
