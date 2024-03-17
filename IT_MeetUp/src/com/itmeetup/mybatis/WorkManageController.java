package com.itmeetup.mybatis;

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
		model.addAttribute("scheduleList", scheduleDAO.scheduleList(opCode));		// 팀의 일정을 조회하는 메소드
		model.addAttribute("assignmentList", assignmentDAO.assignmentList(opCode));	// 팀의 업무할당을 조회하는 메소드
		model.addAttribute("assScheduleList", assignmentDAO.assScheduleList());		// 일정목록을 조회하는 메소드
		model.addAttribute("assOutputList", assignmentDAO.assOutputList());			// 산출물을 조회하는 메소드
		model.addAttribute("reportList", reportDAO.reportList(opCode));				// 팀의 업무보고를 조회하는 메소드
		model.addAttribute("reportOutputList", reportDAO.reportOutputList(opCode));	// 팀의 산출물을 조회하는 메소드
		model.addAttribute("reportPersonList", reportDAO.reportPersonList(opCode));	// 팀의 인원을 조회하는 메소드
		
		return "/Content/MeetGroup/WorkManage.jsp";
	}
	
	@RequestMapping(value = "/assignment.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String insertAssignmentView(ModelMap model, String memCode)
	{
		IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
		IReportListDAO reportDAO = sqlSession.getMapper(IReportListDAO.class);
		
		String opCode = assignmentDAO.searchOpCode(memCode); // 회원의 개설요청 코드
		String pcCode = assignmentDAO.searchPcCode(memCode); // 회원의 참여확인 코드 -- 할당자
			
		model.addAttribute("opCode", opCode);
		
		model.addAttribute("assignmentList", assignmentDAO.assignmentList(opCode));
		model.addAttribute("assScheduleList", assignmentDAO.assScheduleList());
		model.addAttribute("assOutputList", assignmentDAO.assOutputList());
		model.addAttribute("reportPersonList", reportDAO.reportPersonList(opCode));

		return "/Content/MeetGroup/WorkAssignment.jsp";
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping(value = "/report.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String insertReportView(ModelMap model, String memCode, String assCode)
	{
		IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
		
		IMemberDAO skillCategoryDAO = sqlSession.getMapper(IMemberDAO.class); // 스킬카테고리 select
		IMemberDAO skillsDAO = sqlSession.getMapper(IMemberDAO.class); // 스킬 리스트

		String opCode = assignmentDAO.searchOpCode(memCode); // 회원의 개설요청 코드
		System.out.println(assCode);
		model.addAttribute("opCode", opCode);
		model.addAttribute("assCode", assCode);
		
		model.addAttribute("skills", skillsDAO.skills());
		model.addAttribute("skillCategorys", skillCategoryDAO.skillCategorys());
		
		SkillProcessor skProcessors = new SkillProcessor();						// 스킬 리스트 조회 및 처리
		model.addAttribute("skProcessors", skProcessors.createSkillMapping());
		
		return "/Content/MeetGroup/WorkReport.jsp";
	}
	
	@RequestMapping(value = "/approval.action", method = RequestMethod.POST)
	public String insertApproval(ReportListDTO dto, String memCode, String repNumberInput, String decision)
	{
		IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
		IReportListDAO reportDAO = sqlSession.getMapper(IReportListDAO.class);
		String pcCode = assignmentDAO.searchPcCode(memCode); // 회원의 참여확인 코드 -- 할당자
		
		int repNumber = Integer.parseInt(repNumberInput);
		String[] parts = decision.split(",");
		String wsCode = parts[0];
		dto.setPcCode(pcCode);
		dto.setRepNumber(repNumber);
		dto.setWsCode(wsCode);
		
		reportDAO.insertApproval(dto);

		return "redirect:/workManage.action?memCode="+ memCode;
	}
	
	@RequestMapping(value = "/removeReport.action", method = RequestMethod.GET)
	public String removeReport(ReportListDTO dto, String memCode, String repNumberRemove)
	{
		IReportListDAO dao = sqlSession.getMapper(IReportListDAO.class);
		
		int repNumber = Integer.parseInt(repNumberRemove);
		dto.setRepNumber(repNumber);
		System.out.println(memCode);
		System.out.println(repNumber);
		
		dao.removeActualTech(dto);
		dao.removeReport(dto);
		
		return "redirect:/workManage.action?memCode="+ memCode;
	}
	
	
	
	

}
