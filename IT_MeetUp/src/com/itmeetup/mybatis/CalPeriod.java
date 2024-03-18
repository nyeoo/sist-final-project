package com.itmeetup.mybatis;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class CalPeriod
{
	public String ganttChart(CompleteProjectDTO c, ArrayList<ScheduleDTO> s) throws ParseException
    {
    	StringBuffer ganttStr = new StringBuffer();
    	
    	int sumMonths=0;		//-- 총 진행 개월 수 ex. 1월 14일 ~ 4월 3일 → 1월, 2월, 3월, 4월 (4)
    	int sumDays=0;
    	
    	// 각 달의 월 배열 구성
    	String[] Months = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "July", "Aug", "Sep", "Oct", "Nov", "Dec"};
    	
    	// 각 달의 일수 배열 구성
    	int[] days = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    	//			   1   2   3   4   5   6   7   8   9  10  11  12
    	
    	int startYear = Integer.parseInt(c.getStartDate().substring(0, 4));
    	int endYear = Integer.parseInt(c.getEndDate().substring(0, 4));
    	
    	int startMonth = Integer.parseInt(c.getStartDate().substring(5, 7));
    	int endMonth = Integer.parseInt(c.getEndDate().substring(5, 7));
    	
    	
    	// 윤년인지 평년인지 확인
    	if(endYear%4==0 && endYear%100!=0 || endYear%1400==0)
    		days[1] = 29;
    	
    	
    	if(startYear==endYear)
    		sumMonths = endMonth - startMonth +1;
    	else
    		sumMonths = (endMonth + 12) - startMonth +1;
    	
    	ganttStr.append("<div class=\"gantt\">"
    			+ "<div class=\"gantt__row gantt__row--months\" style=\"grid-template-columns: 150px repeat(" + sumMonths + ", 1fr);\">"
    			+ "<div class=\"gantt__row-first\"></div>");
    	
    	int smt = startMonth;
    	for (int i = 0; i < sumMonths; i++)
		{
    		if (smt==13)
    			smt=1;
    		ganttStr.append("<span>" + Months[smt-1] + "</span>");
    		sumDays += days[smt-1];
    		smt++;
		}
		
    	ganttStr.append("</div><div class=\"gantt__row gantt__row--lines\" data-month=\"5\" style=\"grid-template-columns: 150px");
    	
    	smt = startMonth;
    	for (int j = 0; j < sumMonths; j++)
		{
    		if (smt==13)
    			smt=1;
    		ganttStr.append(" calc((100% - 150px) / " + sumDays + " * " + days[smt-1] + ")");
    		smt++;
		}
    	ganttStr.append(";\">");
    	
    	for (int k = 0; k < sumMonths+1; k++)
		{
    		ganttStr.append("<span></span>");
		}
    	
    	ganttStr.append("</div>");
    			
    	int sum=0;
    	int num=0;

    	
		for(ScheduleDTO dto : s)
		{
			if (num==0)
			{
				sum += Integer.parseInt(s.get(0).getSeStartDate().substring(8))+1;
			}
			else
			{
				sum += calDays(s.get(num-1).getSdEndDate(), s.get(num).getSeStartDate());
			}
			ganttStr.append("<div class=\"gantt__row\">"
					+ "<div class=\"gantt__row-first\">" + dto.getSsName() + "</div>"
					+ "<ul class=\"gantt__row-bars\" style=\"grid-template-columns: repeat(" + sumDays + ", 1fr);\">"
					+ "<li style=\"grid-column: " + sum + "/");
			
			sum+=calDays(dto.getSeStartDate(), dto.getSdEndDate());
			ganttStr.append(sum + "; background-color: #2ecaac;\""
					+ "data-bs-toggle=\"tooltip\" data-bs-placement=\"top\""
					+ "data-bs-custom-class=\"custom-tooltip\""
					+ "data-bs-title=\""+ dto.getSeStartDate() +" ~ "+ dto.getSdEndDate() +"\" class=\"stripes\"></li></ul></div>");
			num++;
		}
		ganttStr.append("</div>");
		
		return ganttStr.toString();
    }
	
	public long calDays(String startDate, String endDate) throws ParseException
	{
		String start = startDate;
		String end = endDate;
		
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		Date startFormat = format.parse(start);
		Date endFormat = format.parse(end);
		
		long diffSec = (endFormat.getTime() - startFormat.getTime()) / 1000;
		long diffDays = (diffSec / (24 * 60 * 60));
		
		return diffDays;
	}
}
