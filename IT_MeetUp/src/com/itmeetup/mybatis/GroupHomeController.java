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

	//그룹홈 과정
	@RequestMapping(value = "/grouphome.action", method = RequestMethod.GET)
	public String weeklyReportList(ModelMap model, String opCode)
	{
		IGroupHomeDAO dao = sqlSession.getMapper(IGroupHomeDAO.class);
		
		// 산출물 갯수
		model.addAttribute("meetCount", dao.meetCount(opCode));
		model.addAttribute("planCount", dao.planCount(opCode));
		model.addAttribute("flowchartCount", dao.flowchartCount(opCode));
		model.addAttribute("requestCount", dao.requestCount(opCode));
		
		// 주간업무보고리스트
		model.addAttribute("weeklyReportList", dao.weeklyReportList(opCode));
		
		// 그룹원
		model.addAttribute("groupHomePlan", dao.groupHomePlan(opCode));
		model.addAttribute("groupHomeDesign", dao.groupHomeDesign(opCode));
		model.addAttribute("groupHomeFront", dao.groupHomeFront(opCode));
		model.addAttribute("groupHomeBack", dao.groupHomeBack(opCode));
		
		// 진행기간
		model.addAttribute("progressPeriod", dao.progressPeriod(opCode));
		
		// 진행기간별 막대그래프 비율
		model.addAttribute("analyzePercent", dao.analyzePercent(opCode));
		model.addAttribute("designPercent", dao.designPercent(opCode));
		model.addAttribute("avatarPercent", dao.avatarPercent(opCode));
		model.addAttribute("testPercent", dao.testPercent(opCode));

		return "/Content/MeetGroup/GroupHome.jsp";
	}

}
