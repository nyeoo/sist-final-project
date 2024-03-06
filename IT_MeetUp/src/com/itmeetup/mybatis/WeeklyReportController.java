package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WeeklyReportController
{

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/weeklyReport.action", method = RequestMethod.GET)
	public String weeklyReport(ModelMap model)
	{
		IWeeklyReportDAO dao = sqlSession.getMapper(IWeeklyReportDAO.class);
		model.addAttribute("weeklyReport", dao.weeklyReport()); // ssName 데이터를 모델에 추가
		return "/Content/MeetGroup/WeeklyReportList.jsp";
	}

}