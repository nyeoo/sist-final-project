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
	public String CalendarList(ModelMap model, String memCode)
	{
		ICalendarDAO dao = sqlSession.getMapper(ICalendarDAO.class);

		ArrayList<ScheduleDTO> allCalendar = dao.allCalendar(memCode);
		ArrayList<AssignmentDTO> assCalendar = dao.assCalendar(memCode);

		// 캘린더 켜졌을 때 맨 처음 보이는 날짜
		String initialDate = "";

		// Calendar.jsp로 보낼 데이터
		String calData = "";
		calData += "[";

		for (ScheduleDTO dto : allCalendar)
		{
			calData += "{";
			calData += "title: '" + dto.getSsName() + "', ";
			calData += "start: '" + dto.getSeStartDate() + "', ";
			calData += "end: '" + dto.getSdEndDate() + "', ";
			/* calData += "color: 'blue' "; */
			String color;
			switch (dto.getSsName())
			{
			case "분석":
				color = "green";
				break;
			case "설계":
				color = "orange";
				break;
			case "구현":
				color = "purple";
				break;
			case "테스트":
				color = "blue";
				break;
			default:
				color = "blue";
				break;
			}
			calData += "color: '" + color + "' ";
			calData += "},";

		}
		for (AssignmentDTO dtoass : assCalendar)
		{
			if (dtoass.getAssStartDate() != null)
			{
				if (dtoass.getAssStartDate() != null)
				{
					String nickName = dtoass.getPiNickName();
					if (dtoass.getLeaPcCode().equals("이탈자"))
					{
						nickName = "이탈자";
					}
					calData += "{";
					calData += "title: '" + nickName + " - " + dtoass.getAssName() + "', ";
					calData += "start: '" + dtoass.getAssStartDate() + "', ";
					calData += "color: 'red' ";
					calData += "},";
				}
			}
		}

		// 마지막 항목 뒤에는 쉼표를 붙이지 않도록 처리
		if (!allCalendar.isEmpty())
		{
			calData = calData.substring(0, calData.length() - 1);
		}

		calData += "]";

		// 달력 시작 날짜
		ArrayList<ScheduleDTO> dtos = dao.allCalendar(memCode);
		initialDate += "'" + dtos.get(0).getSeStartDate() + "'";

		if (assCalendar.size() != 0)
		{
			assCalendar.get(0).getPiNickName();
			assCalendar.get(0).getAssName();
			assCalendar.get(0).getAssStartDate();
		} else if (allCalendar.size() != 0)
		{
			allCalendar.get(0).getSsName();
			allCalendar.get(0).getSeStartDate();
			allCalendar.get(0).getSdEndDate();
		}

		model.addAttribute("initialDate", initialDate);
		model.addAttribute("calData", calData);

		return "/Content/MeetGroup/Calendar.jsp";
	}

}
