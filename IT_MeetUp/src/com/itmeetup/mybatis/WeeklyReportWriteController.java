package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.omg.CORBA.Request;
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

		String pcCode = assignmentDAO.searchPcCode(memCode); // 회원의 참여확인 코드

		model.addAttribute("weeklyReportWrite", dao.weeklyReportWrite(opCode)); // ssName 데이터를 모델에 추가
		return "/Content/MeetGroup/WeeklyReport.jsp";
	}

	// 주간업무보고서 제출
	@RequestMapping(value = "/insertWeeklyReport.action", method = RequestMethod.POST)
	public String insertWeeklyReport(WeeklyReportDTO dto)
	{
		IWeeklyReportWriteDAO dao = sqlSession.getMapper(IWeeklyReportWriteDAO.class);
		String memCode = dto.getMemCode();
		// 회원의 pcCode 가져오기
		IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
		String pcCode = assignmentDAO.searchPcCode(memCode);
		// dto 객체에 pcCode 설정
		dto.setPcCode(pcCode);
		
		// 주간 보고서 삽입
		dao.insertWeeklyReport(dto);
		return "redirect:/weeklyReport.action?memCode="+ memCode;
	}
}