package com.itmeetup.mybatis;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CalendarController
{
	// 주요 속성 구성
	// mybatis 객체 의존성 (자동) 주입~!!!
	@Autowired
	private SqlSession sqlSession;

	/*
	 * @RequestMapping(value = "/calendar.action", method = RequestMethod.GET)
	 * public String CalendarList(ModelMap model) { ICalendarDAO dao =
	 * sqlSession.getMapper(ICalendarDAO.class);
	 * 
	 * model.addAttribute("calProgress", dao.calProgress());
	 * model.addAttribute("calDesign", dao.calDesign());
	 * model.addAttribute("calAvatar", dao.calAvatar());
	 * model.addAttribute("calTest", dao.calTest());
	 * 
	 * return "/Content/MeetGroup/Calendar.jsp"; }
	 */

	@RequestMapping(value = "/calendar.action", method = RequestMethod.GET)
	@ResponseBody
	public List<ScheduleDTO> getCalendarEvents()
	{
		ICalendarDAO dao = sqlSession.getMapper(ICalendarDAO.class);
		return dao.getAllEvents();
	}
}
