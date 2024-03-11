package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WeeklyReportWriteController
{

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/weeklyReportWrite.action", method = RequestMethod.GET)
	public String weeklyReportWrite(ModelMap model, String memCode)
	{
		IWeeklyReportWriteDAO dao = sqlSession.getMapper(IWeeklyReportWriteDAO.class);
		IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
		
		String opCode = assignmentDAO.searchOpCode(memCode);
		model.addAttribute("weeklyReportWrite", dao.weeklyReportWrite(opCode)); // ssName 데이터를 모델에 추가
		return "/Content/MeetGroup/WeeklyReport.jsp";
	}

}