package com.itmeetup.mybatis;

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

	
	@RequestMapping(value = "/calendar.action", method = RequestMethod.GET)
	public String CalendarList(ModelMap model)
	{
		ICalendarDAO dao = sqlSession.getMapper(ICalendarDAO.class);

		model.addAttribute("CalendarSchePeriod", dao.CalendarSchePeriod());

		return "/Content/MeetGroup/Calendar.jsp";
	}

}
