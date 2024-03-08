package com.itmeetup.mybatis;

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
	public String weeklyReportList(ModelMap model, String memCode)
	{
		IGroupHomeDAO dao = sqlSession.getMapper(IGroupHomeDAO.class);

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

		// 팀장 평가 목록
		model.addAttribute("leaderEval", dao.leaderEval(memCode));

		// 팀원 평가 목록
		model.addAttribute("teamEval", dao.teamEval(memCode));
		
		// 그룹원 리스트 목록
		model.addAttribute("groupPersonnel", dao.groupPersonnel(memCode));

		return "/Content/MeetGroup/GroupHome.jsp";
	}

}
