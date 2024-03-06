package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GroupSetupController
{
//	// 주요 속성 구성
//		// mybatis 객체 의존성 (자동) 주입~!!!
//		@Autowired
//		private SqlSession sqlSession;
//
//		// 그룹원설정
//		@RequestMapping(value = "/groupSetup.action", method = RequestMethod.GET)
//		public String groupSetupList(ModelMap model)
//		{
//			IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);
//			
//			// 그룹원 리스트
//			model.addAttribute("groupSetupList", dao.groupSetupList());
//			
//			// 그룹원 팀 이름
//			model.addAttribute("groupTeamName", dao.groupTeamName());
//
//			return "/Content/MeetGroup/GroupSetup.jsp";
//		}
//		
//		// 팀명 수정을 위한 모달 컨트롤러
//		@RequestMapping(value = "/groupSetupUpdate.action", method = RequestMethod.GET)
//		public String GroupTeamNamesearchId(int code, ModelMap model)
//		{
//			IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);
//
//			OpenProjectDTO opdto = new OpenProjectDTO();
//
//			opdto = dao.GroupTeamNamesearchId(code);
//
//			model.addAttribute("opdto", opdto);
//
//			return "/Content/MeetGroup/M_GroupSetup.jsp";
//		}
//		
//		// 팀명 수정
//		@RequestMapping(value = "/groupteamnamemodify.action", method = RequestMethod.POST)
//		public String groupTeamNamemodify(String teamName)
//		{
//			IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);
//			dao.groupTeamNamemodify(teamName);
//			return "redirect:/groupSetup.action";
//		}
	
	// 주요 속성 구성
	// mybatis 객체 의존성 (자동) 주입~!!!
	@Autowired
	private SqlSession sqlSession;

	// 그룹원설정
	@RequestMapping(value = "/groupSetup.action", method = RequestMethod.GET)
	public String groupSetupList(ModelMap model, String opcode)
	{
		IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);
		
		// 그룹원 리스트
		model.addAttribute("groupSetupList", dao.groupSetupList(opcode));
		
		// 그룹원 팀 이름
		model.addAttribute("groupTeamName", dao.groupTeamName(opcode));

		return "/Content/MeetGroup/GroupSetup.jsp";
	}
	
	// 팀명 수정을 위한 모달 컨트롤러
	@RequestMapping(value = "/groupSetupUpdate.action", method = RequestMethod.GET)
	public String GroupTeamNamesearchId(ModelMap model, String opcode)
	{
		IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);

		OpenProjectDTO opdto = new OpenProjectDTO();

		opdto = dao.GroupTeamNamesearchId(opcode);
		
		
		model.addAttribute("opdto", opdto);

		return "/Content/MeetGroup/M_GroupSetup.jsp";
	}
	
	// 팀명 수정
	@RequestMapping(value = "/groupteamnamemodify.action", method = RequestMethod.POST)
	public String groupTeamNamemodify(String teamName, String opcode)
	{
		IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);
		dao.groupTeamNamemodify(teamName, opcode);
		return "redirect:/groupSetup.action?opcode=" + opcode;
	}
	
	
	

}
