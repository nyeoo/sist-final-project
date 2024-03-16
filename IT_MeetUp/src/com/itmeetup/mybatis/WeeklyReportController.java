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
	public String weeklyReport(ModelMap model, String memCode)
	{
		IWeeklyReportDAO dao = sqlSession.getMapper(IWeeklyReportDAO.class);
		IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
		
		String opCode = assignmentDAO.searchOpCode(memCode);
		
		int countReport = dao.countWeeklyReport(opCode);
		int pageNubmer = 1;
		
		int totalReport = countReport / pageNubmer + (countReport % pageNubmer > 0 ? 1 : 0);
		
		model.addAttribute("weeklyReport", dao.weeklyReport(opCode)); // ssName 데이터를 모델에 추가
		
		return "/Content/MeetGroup/WeeklyReportList.jsp";
	}
	

}