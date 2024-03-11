package com.itmeetup.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WorkManageController
{

	@Autowired
	private SqlSession sqlSession;
	@RequestMapping(value = "/workManage.action", method = RequestMethod.GET)
	public String workManage(ModelMap model, String memCode)
	{
		IScheduleDAO scheduleDAO = sqlSession.getMapper(IScheduleDAO.class);
		IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
		IReportListDAO reportDAO = sqlSession.getMapper(IReportListDAO.class);
		IMemberDAO skillCategoryDAO = sqlSession.getMapper(IMemberDAO.class); // 스킬카테고리 select
		IMemberDAO skillsDAO = sqlSession.getMapper(IMemberDAO.class); // 스킬 리스트
		
		String opCode = assignmentDAO.searchOpCode(memCode); // 회원의 개설요청 코드
		String pcCode = assignmentDAO.searchPcCode(memCode); // 회원의 참여확인 코드
		String leaderMemCode = assignmentDAO.searchLeaderMemCode(opCode); // 방장의 회원코드
		String leaderPcCode = assignmentDAO.searchLeaderPcCode(leaderMemCode); // 방장의 참여확인코드
		String leavePcCode = assignmentDAO.searchLeaveLeader(leaderPcCode); // 이탈한 방장의 참여확인코드
		String changeLeaderMemCode = assignmentDAO.searchChangeLeaderMemCode(opCode); // 변경된 방장의 회원코드
		String changeLeaderPcCode = assignmentDAO.searchChangeLeaderPcCode(opCode); // 변경된 방장의 참여확인코드

		model.addAttribute("opCode", opCode);
		model.addAttribute("pcCode", pcCode);
		model.addAttribute("leaderMemCode", leaderMemCode);
		model.addAttribute("leaderPcCode", leaderPcCode);
		model.addAttribute("leavePcCode", leavePcCode);
		model.addAttribute("changeLeaderMemCode", changeLeaderMemCode);
		model.addAttribute("changeLeaderPcCode", changeLeaderPcCode);
		model.addAttribute("scheduleList", scheduleDAO.scheduleList(opCode));
		model.addAttribute("assignmentList", assignmentDAO.assignmentList(opCode));
		model.addAttribute("assScheduleList", assignmentDAO.assScheduleList());
		model.addAttribute("assOutputList", assignmentDAO.assOutputList());
		model.addAttribute("reportList", reportDAO.reportList(opCode));
		model.addAttribute("reportOutputList", reportDAO.reportOutputList(opCode));
		model.addAttribute("reportPersonList", reportDAO.reportPersonList(opCode));
		
		SkillProcessor skillProcessor = new SkillProcessor(); // 스킬 리스트 조회 및 처리
		model.addAttribute("skills", skillsDAO.skills());
		model.addAttribute("skillCategorys", skillCategoryDAO.skillCategorys());
		model.addAttribute("skillProcessor", skillProcessor.createSkillMapping());

		return "/Content/MeetGroup/WorkManage.jsp";
	}
	
	@RequestMapping(value = "/assignment.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String insertAssignmentView(ModelMap model, String memCode)
	{
		IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
		
		
		String opCode = assignmentDAO.searchOpCode(memCode); // 회원의 개설요청 코드
		String pcCode = assignmentDAO.searchPcCode(memCode); // 회원의 참여확인 코드 -- 할당자
		
			
		model.addAttribute("opCode", opCode);
		
		model.addAttribute("assignmentList", assignmentDAO.assignmentList(opCode));
		model.addAttribute("assScheduleList", assignmentDAO.assScheduleList());
		model.addAttribute("assOutputList", assignmentDAO.assOutputList());
		

		return "/Content/MeetGroup/WorkAssignment.jsp";
	}
	
	

}
