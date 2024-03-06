package com.itmeetup.mybatis;


import java.util.ArrayList;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CalendarController
{
	// 주요 속성 구성
	// mybatis 객체 의존성 (자동) 주입~!!!
	@Autowired
	private SqlSession sqlSession;

	// 캘린더
	@RequestMapping(value = "/calendar.action", method = RequestMethod.GET)
	public String CalendarList(ModelMap model, String sdOpCode)
	{
		ICalendarDAO dao = sqlSession.getMapper(ICalendarDAO.class);
		
		ArrayList<ScheduleDTO> allCalendar = dao.allCalendar(sdOpCode);
		ArrayList<AssignmentDTO> assCalendar = dao.assCalendar(sdOpCode);
		
		// 캘린더 켜졌을 때 맨 처음 보이는 날짜
		String initialDate = "";
		
		// Calendar.jsp로 보낼 데이터
		String calData = "";
		calData += "[";

		for (ScheduleDTO dto : allCalendar) {
		    calData += "{";
		    calData += "title: '" + dto.getSsName() + "', ";
		    calData += "start: '" + dto.getSeStartDate() + "', ";
		    calData += "end: '" + dto.getSdEndDate() + "', ";
		    calData += "color: 'red' ";
		    calData += "},";
		    
		       
		  
		}
		for (AssignmentDTO dtoass : assCalendar)
		{
			calData += "{";
			calData += "title: '" + dtoass.getPiNickName() + " - " + dtoass.getAssName() + "', ";
			calData += "start: '" + dtoass.getAssDate() + "', ";
			calData += "color: 'blue' ";
			calData += "},";
		}

		// 마지막 항목 뒤에는 쉼표를 붙이지 않도록 처리
		if (!allCalendar.isEmpty()) {
			calData = calData.substring(0, calData.length() - 1);
		}

		calData += "]";
		
		//달력 시작 날짜
		ArrayList<ScheduleDTO> dtos = dao.allCalendar(sdOpCode);
		initialDate += "'" + dtos.get(0).getSeStartDate() + "'";
		
		/*
		if(assCalendar.size()!=0)
		{
			assCalendar.get(0).getPiNickName();
			assCalendar.get(0).getAssName();
			assCalendar.get(0).getAssDate();
		}
		else if(allCalendar.size()!=0)
		{
			allCalendar.get(0).getSsName();
			allCalendar.get(0).getSeStartDate();
			allCalendar.get(0).getSdEndDate();
		}
		*/
		
		model.addAttribute("initialDate", initialDate);
		model.addAttribute("calData", calData);

		return "/Content/MeetGroup/Calendar.jsp";
	}

}
