package com.itmeetup.mybatis;

import java.util.ArrayList;

public class CompleteProjectDTO
{
	// 주요 속성 구성
	private String title, content, teamName, catName, cpCode, img1, img2, img3, startDate, endDate;
	private int minutes, assignment, report, task;
	private ArrayList<ScheduleDTO> scheduleList;

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

	public String getImg1()
	{
		return img1;
	}

	public void setImg1(String img1)
	{
		this.img1 = img1;
	}

	public String getImg2()
	{
		return img2;
	}

	public void setImg2(String img2)
	{
		this.img2 = img2;
	}

	public String getImg3()
	{
		return img3;
	}

	public void setImg3(String img3)
	{
		this.img3 = img3;
	}

	public String getStartDate()
	{
		return startDate;
	}

	public void setStartDate(String startDate)
	{
		this.startDate = startDate;
	}

	public String getEndDate()
	{
		return endDate;
	}

	public void setEndDate(String endDate)
	{
		this.endDate = endDate;
	}

	public ArrayList<ScheduleDTO> getScheduleList()
	{
		return scheduleList;
	}

	public void setScheduleList(ArrayList<ScheduleDTO> scheduleList)
	{
		this.scheduleList = scheduleList;
	}

	public int getMinutes()
	{
		return minutes;
	}

	public void setMinutes(int minutes)
	{
		this.minutes = minutes;
	}

	public int getAssignment()
	{
		return assignment;
	}

	public void setAssignment(int assignment)
	{
		this.assignment = assignment;
	}

	public int getReport()
	{
		return report;
	}

	public void setReport(int report)
	{
		this.report = report;
	}

	public int getTask()
	{
		return task;
	}

	public void setTask(int task)
	{
		this.task = task;
	}

	
	
	
}
