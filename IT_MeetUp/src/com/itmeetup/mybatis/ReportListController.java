package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReportListController
{

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/reportList.action", method = RequestMethod.GET)
	public String reportList(ModelMap model)
	{
		IReportListDAO dao = sqlSession.getMapper(IReportListDAO.class);
		model.addAttribute("reportList", dao.reportList()); // 보고서 목록 데이터를 모델에 추가
		model.addAttribute("reportScheduleList", dao.reportScheduleList()); // 업무단계 데이터를 모델에 추가
		model.addAttribute("reportOutputList", dao.reportOutputList()); // 업무분류 데이터를 모델에 추가
		model.addAttribute("reportPersonList", dao.reportPersonList()); // 담당자 데이터를 모델에 추가
		return "/Content/MeetGroup/WorkReportList.jsp";
	}
}
