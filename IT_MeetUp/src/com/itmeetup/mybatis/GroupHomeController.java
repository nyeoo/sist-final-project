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
	public String weeklyReportList(ModelMap model)
	{
		IGroupHomeDAO dao = sqlSession.getMapper(IGroupHomeDAO.class);
		
		// 산출물 갯수
		model.addAttribute("meetCount", dao.meetCount());
		model.addAttribute("planCount", dao.planCount());
		model.addAttribute("flowchartCount", dao.flowchartCount());
		model.addAttribute("requestCount", dao.requestCount());
		
		// 주간업무보고리스트
		model.addAttribute("weeklyReportList", dao.weeklyReportList());
		
		// 그룹원
		model.addAttribute("groupHomePlan", dao.groupHomePlan());
		model.addAttribute("groupHomeDesign", dao.groupHomeDesign());
		model.addAttribute("groupHomeFront", dao.groupHomeFront());
		model.addAttribute("groupHomeBack", dao.groupHomeBack());
		
		// 진행기간
		model.addAttribute("progressPeriod", dao.progressPeriod());
		
		// 진행기간별 막대그래프 비율
		model.addAttribute("analyzePercent", dao.analyzePercent());
		model.addAttribute("designPercent", dao.designPercent());
		model.addAttribute("avatarPercent", dao.avatarPercent());
		model.addAttribute("testPercent", dao.testPercent());

		return "/Content/MeetGroup/GroupHome.jsp";
	}

}
