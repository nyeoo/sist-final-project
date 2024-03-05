package com.itmeetup.mybatis;

import java.sql.Date;
import java.util.ArrayList;

public class WriteFormDTO
{
	// 주요속성 
	private String mojibsu , title, content
				  
			 	  , meetcode,catcode,memcode,carcode,siggcode , teamname ,startDate,endDate;
    //private Date startDate,endDate;
	private ArrayList<String> hopeskills;
	
	//, startdate1,enddate1,startdate2,enddate2,startdate3,enddate3,startdate4,enddate4;
	
	
	

	public String getTeamname()
	{
		return teamname;
	}

	public void setStartDate(String startDate)
	{
		this.startDate = startDate;
	}

	public void setEndDate(String endDate)
	{
		this.endDate = endDate;
	}

	public void setTeamname(String teamname)
	{
		this.teamname = teamname;
	}

	public ArrayList<String> getHopeskills()
	{
		return hopeskills;
	}

	public void setHopeskills(ArrayList<String> hopeskills)
	{
		this.hopeskills = hopeskills;
	}

	public String getMojibsu()
	{
		return mojibsu;
	}

	public void setMojibsu(String mojibsu)
	{
		this.mojibsu = mojibsu;
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

	

	public String getMeetcode()
	{
		return meetcode;
	}

	public void setMeetcode(String meetcode)
	{
		this.meetcode = meetcode;
	}

	public String getCatcode()
	{
		return catcode;
	}

	public void setCatcode(String catcode)
	{
		this.catcode = catcode;
	}

	public String getMemcode()
	{
		return memcode;
	}

	public void setMemcode(String memcode)
	{
		this.memcode = memcode;
	}

	public String getCarcode()
	{
		return carcode;
	}

	public void setCarcode(String carcode)
	{
		this.carcode = carcode;
	}

	public String getSiggcode()
	{
		return siggcode;
	}

	public void setSiggcode(String siggcode)
	{
		this.siggcode = siggcode;
	}

//	public Date getStartDate()
//	{
//		return startDate;
//	}
//
//	public void setStartDate(Date startDate)
//	{
//		this.startDate = startDate;
//	}
//
//	public Date getEndDate()
//	{
//		return endDate;
//	}
//
//	public void setEndDate(Date endDate)
//	{
//		this.endDate = endDate;
//	}

//	public Date getStartdate1()
//	{
//		return startdate1;
//	}
//
//	public void setStartdate1(Date startdate1)
//	{
//		this.startdate1 = startdate1;
//	}
//
//	public Date getEnddate1()
//	{
//		return enddate1;
//	}
//
//	public void setEnddate1(Date enddate1)
//	{
//		this.enddate1 = enddate1;
//	}
//
//	public Date getStartdate2()
//	{
//		return startdate2;
//	}
//
//	public void setStartdate2(Date startdate2)
//	{
//		this.startdate2 = startdate2;
//	}
//
//	public Date getEnddate2()
//	{
//		return enddate2;
//	}
//
//	public void setEnddate2(Date enddate2)
//	{
//		this.enddate2 = enddate2;
//	}
//
//	public Date getStartdate3()
//	{
//		return startdate3;
//	}
//
//	public void setStartdate3(Date startdate3)
//	{
//		this.startdate3 = startdate3;
//	}
//
//	public Date getEnddate3()
//	{
//		return enddate3;
//	}
//
//	public void setEnddate3(Date enddate3)
//	{
//		this.enddate3 = enddate3;
//	}
//
//	public Date getStartdate4()
//	{
//		return startdate4;
//	}
//
//	public void setStartdate4(Date startdate4)
//	{
//		this.startdate4 = startdate4;
//	}
//
//	public Date getEnddate4()
//	{
//		return enddate4;
//	}
//
//	public void setEnddate4(Date enddate4)
//	{
//		this.enddate4 = enddate4;
//	}
	
	
	
}
