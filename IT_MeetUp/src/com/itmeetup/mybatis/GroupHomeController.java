package com.itmeetup.mybatis;

//import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GroupHomeController
{
	// 주요 속성 구성
	// mybatis 객체 의존성 (자동) 주입~!!!
	@Autowired
	private SqlSession sqlSession;

	// 그룹홈 과정
	@RequestMapping(value = "/grouphome.action", method = RequestMethod.GET)
	public String weeklyReportList(HttpSession session, ModelMap model, String memCode)
	{
		String viewPage = null;
		IGroupHomeDAO dao = sqlSession.getMapper(IGroupHomeDAO.class);
		
		
		String opCode = dao.teamOpCode(memCode); // 회원의 개설요청 코드
		String leaveTeamPcCodes = dao.leaveTeamPcCodes(memCode);
		if (opCode.equals("0")) {
			viewPage = "redirect:/projectList.action";
		}
		else if (leaveTeamPcCodes.equals("1")) {
			viewPage = "redirect:/projectList.action";
		}
		else {
			String pcCode = dao.teamPcCode(memCode); // 회원의 개설요청 코드
			String leaderMemCode = dao.leaderMemCode(opCode); // 방장의 회원코드
			String leaderPcCode = dao.leaderPcCode(leaderMemCode); // 방장의 참여확인코드
			String leavePcCode = dao.leaveLeader(leaderPcCode); // 이탈한 방장의 참여확인코드
			String changeLeaderMemCode = dao.changeLeaderMemCode(opCode); // 변경된 방장의 회원코드
			String changeLeaderPcCode = dao.changeLeaderPcCode(opCode); // 변경된 방장의 참여확인코드
			String leaderNickNames = dao.leaderNickNames(memCode);		//방장닉네임
			String leaveNickNames = dao.leaveNickNames(memCode);		//이탈자 닉네임
			String leavePcCodes = dao.leavePcCodes(memCode);		//이탈자 참여코드
			String changeNickNames = dao.changeNickNames(memCode);		//교체된 팀장의 닉네임
				
			MemberDTO memberStr = (MemberDTO) session.getAttribute("loginDTO"); // 세션에서 가져온 멤버
			String memCodes = memberStr.getPiMemCode();		
			
			String evapcCode = dao.evalGroupPcCode(memCodes);
			
			model.addAttribute("evapcCode", evapcCode);
			
			// 산출물 갯수
			model.addAttribute("meetAnalCount", dao.meetAnalCount(memCode));
			model.addAttribute("meetDesignCount", dao.meetDesignCount(memCode));
			model.addAttribute("meetAvatarCount", dao.meetAvatarCount(memCode));
			model.addAttribute("meetTestCount", dao.meetTestCount(memCode));
			model.addAttribute("meetTotalCount", dao.meetTotalCount(memCode));
			model.addAttribute("planCount", dao.planCount(memCode));
			model.addAttribute("flowchartCount", dao.flowchartCount(memCode));
			model.addAttribute("requestCount", dao.requestCount(memCode));

			// 주간업무보고리스트
			model.addAttribute("weeklyReportList", dao.weeklyReportList(memCode));

			// 그룹원
			model.addAttribute("groupHomePlan", dao.groupHomePlan(memCode));
			model.addAttribute("groupHomeDesign", dao.groupHomeDesign(memCode));
			model.addAttribute("groupHomeFront", dao.groupHomeFront(memCode));
			model.addAttribute("groupHomeBack", dao.groupHomeBack(memCode));

			// 진행기간
			model.addAttribute("progressPeriod", dao.progressPeriod(memCode));

			// 진행기간별 막대그래프 비율
			model.addAttribute("analyzePercent", dao.analyzePercent(memCode));
			model.addAttribute("designPercent", dao.designPercent(memCode));
			model.addAttribute("avatarPercent", dao.avatarPercent(memCode));
			model.addAttribute("testPercent", dao.testPercent(memCode));
			
			// 크라운 옮기기 위한 함수
			model.addAttribute("opCode", opCode);
			model.addAttribute("pcCode", pcCode);
			model.addAttribute("leaderMemCode", leaderMemCode);
			model.addAttribute("leaderPcCode", leaderPcCode);
			model.addAttribute("leavePcCode", leavePcCode);
			model.addAttribute("changeLeaderMemCode", changeLeaderMemCode);
			model.addAttribute("changeLeaderPcCode", changeLeaderPcCode);
			model.addAttribute("leaderNickNames", leaderNickNames);
			model.addAttribute("leaveNickNames", leaveNickNames);
			model.addAttribute("leavePcCodes", leavePcCodes);
			model.addAttribute("changeNickNames", changeNickNames);

			// 팀장 평가 목록
			model.addAttribute("leaderEval", dao.leaderEval(memCode));

			// 팀원 평가 목록
			model.addAttribute("teamEval", dao.teamEval(memCode));
			
			// 팀장 닉네임 출력
			model.addAttribute("groupLeader", dao.groupLeader(memCode));
			
			// 그룹원 리스트 목록
			model.addAttribute("groupPersonnel", dao.groupPersonnel(memCode));

			
			//viewPage = "redirect:/grouphome.action?memCode=" + memCode;
			viewPage = "/Content/MeetGroup/GroupHome.jsp";
			
		}
		
		return viewPage;
	}

	// 평가 입력
	@RequestMapping(value = "/evalinsert.action", method = RequestMethod.GET)
	public String evalInsert(HttpSession session, EvaluationDTO dto, ModelMap model)
	{
		IGroupHomeDAO dao = sqlSession.getMapper(IGroupHomeDAO.class);
		List<String> evalua1 = dto.getEvalQue1();	//선택한 사람(피평가자)
		List<String> evalua2 = dto.getEvalQue2();	//선택한 사람(피평가자)
		List<String> evalua3 = dto.getEvalQue3();	//선택한 사람(피평가자)
		List<String> evalua4 = dto.getEvalQue4();	//선택한 사람(피평가자)
		List<String> evalua5 = dto.getGrLeader();	//선택한 사람(피평가자)
		
		 
		MemberDTO memberStr = (MemberDTO) session.getAttribute("loginDTO"); // 세션에서 가져온 멤버
		String memCode = memberStr.getPiMemCode();		
		
		String evapcCode = dao.evalGroupPcCode(memCode);
		model.addAttribute("evapcCode", evapcCode);
		
		dao.evalAdd1(evalua1, evapcCode);
		dao.evalAdd2(evalua2, evapcCode);
		dao.evalAdd3(evalua3, evapcCode);
		dao.evalAdd4(evalua4, evapcCode);
		
		// 아니오 눌렀을 때는 함수 작동 x
		if (evalua5 != null && !evalua5.contains("없음")) {
	        dao.evalAdd5(evalua5, evapcCode);
	    }
		
//		if (!evalua5.equals("없음")) 
//		{
//	        dao.evalAdd5(evalua5, evapcCode);
//	    }
//		dao.evalAdd5(evalua5, evapcCode);
		
		//return "/Content/ProjectLounge/PostList.jsp";
		return "redirect:/projectList.action";
	}
}
