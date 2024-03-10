package com.itmeetup.mybatis;

public class CareerDTO
{
	private String startDate, endDate; 							// 경력 시작일, 종료일
	private String comName;										// 회사명
	private String jobName;										// 직무명
	private String years, months, totalYear, totalMonth;		// 한 회사 경력 년, 월, 총 경력 년, 월
	private String memCode;										// 회원 코드
	
	// getter / setter 
	public String getMemCode()
	{
		return memCode;
	}
	public void setMemCode(String memCode)
	{
		this.memCode = memCode;
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
	public String getComName()
	{
		return comName;
	}
	public void setComName(String comName)
	{
		this.comName = comName;
	}
	public String getJobName()
	{
		return jobName;
	}
	public void setJobName(String jobName)
	{
		this.jobName = jobName;
	}
	public String getYears()
	{
		return years;
	}
	public void setYears(String years)
	{
		this.years = years;
	}
	public String getMonths()
	{
		return months;
	}
	public void setMonths(String months)
	{
		this.months = months;
	}
	public String getTotalYear()
	{
		return totalYear;
	}
	public void setTotalYear(String totalYear)
	{
		this.totalYear = totalYear;
	}
	public String getTotalMonth()
	{
		return totalMonth;
	}
	public void setTotalMonth(String totalMonth)
	{
		this.totalMonth = totalMonth;
	}
	
	
	
	
}
