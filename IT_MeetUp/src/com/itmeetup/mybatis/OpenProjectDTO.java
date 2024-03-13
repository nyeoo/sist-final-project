package com.itmeetup.mybatis;

import java.util.ArrayList;

public class OpenProjectDTO
{
	// 주요 속성 구성
	private String code, start, end, profile, nickname, title, content, sigg, sido ,meet, teamName ,category, memCode ,career;   //,categorys;
																								    
	private int view, day ,mojibsu;
	private ArrayList<String> skill;
	private ArrayList<JobDTO> jobList;
	
	// getter / setter 구성
	
	public String getCode()
	{
		return code;
	}
	public void setCode(String code)
	{
		this.code = code;
	}
	public String getStart()
	{
		return start;
	}
	public void setStart(String start)
	{
		this.start = start;
	}
	public String getEnd()
	{
		return end;
	}
	public void setEnd(String end)
	{
		this.end = end;
	}
	public String getProfile()
	{
		return profile;
	}
	public void setProfile(String profile)
	{
		this.profile = profile;
	}
	public String getNickname()
	{
		return nickname;
	}
	public void setNickname(String nickname)
	{
		this.nickname = nickname;
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
	public String getSigg()
	{
		return sigg;
	}
	public void setSigg(String sigg)
	{
		this.sigg = sigg;
	}
	public String getSido()
	{
		return sido;
	}
	public void setSido(String sido)
	{
		this.sido = sido;
	}
	public String getMeet()
	{
		return meet;
	}
	public void setMeet(String meet)
	{
		this.meet = meet;
	}
	public String getTeamName()
	{
		return teamName;
	}
	public void setTeamName(String teamName)
	{
		this.teamName = teamName;
	}
	public String getCategory()
	{
		return category;
	}
	public void setCategory(String category)
	{
		this.category = category;
	}
	public String getMemCode()
	{
		return memCode;
	}
	public void setMemCode(String memCode)
	{
		this.memCode = memCode;
	}
	public int getView()
	{
		return view;
	}
	public void setView(int view)
	{
		this.view = view;
	}
	public int getDay()
	{
		return day;
	}
	public void setDay(int day)
	{
		this.day = day;
	}
	public int getMojibsu()
	{
		return mojibsu;
	}
	public void setMojibsu(int mojibsu)
	{
		this.mojibsu = mojibsu;
	}
	public ArrayList<String> getSkill()
	{
		return skill;
	}
	public void setSkill(ArrayList<String> skill)
	{
		this.skill = skill;
	}
	public ArrayList<JobDTO> getJobList()
	{
		return jobList;
	}
	public void setJobList(ArrayList<JobDTO> jobList)
	{
		this.jobList = jobList;
	}
	public String getCareer()
	{
		return career;
	}
	public void setCareer(String career)
	{
		this.career = career;
	}
	
	
	
	/*
	// 현재 진행중인 프로젝트 리스트에 필요한 카테고리
	public String getCategorys()
	{
		return categorys;
	}
	public void setCategorys(String categorys)
	{
		this.categorys = categorys;
	}
	*/
}
