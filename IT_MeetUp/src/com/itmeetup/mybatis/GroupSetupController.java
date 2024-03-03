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
	// 주요 속성 구성
	// mybatis 객체 의존성 (자동) 주입~!!!
	@Autowired
	private SqlSession sqlSession;

	
	@RequestMapping(value = "/groupSetup.action", method = RequestMethod.GET)
	public String groupSetupList(ModelMap model)
	{
		IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);

		model.addAttribute("groupSetupList", dao.groupSetupList());
		model.addAttribute("groupTeamName", dao.groupTeamName());

		return "/Content/MeetGroup/GroupSetup.jsp";
	}
	
	@RequestMapping(value = "/groupSetupUpdate.action", method = RequestMethod.GET)
	public String GroupTeamNamesearchId(int code, ModelMap model)
	{
		IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);

		OpenProjectDTO opdto = new OpenProjectDTO();

		opdto = dao.GroupTeamNamesearchId(code);

		model.addAttribute("opdto", opdto);

		return "/Content/MeetGroup/M_GroupSetup.jsp";
	}
	/*
	 * @RequestMapping(value = "/groupteamnamemodify.action", method =
	 * RequestMethod.POST) public String groupTeamNamemodify(OpenProjectDTO opdto) {
	 * IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);
	 * 
	 * dao.groupTeamNamemodify(opdto);
	 * 
	 * return "redirect:groupsetup.action"; }
	 */

	@RequestMapping(value = "/groupteamnamemodify.action", method = RequestMethod.POST)
	public String groupTeamNamemodify(String teamName)
	{
		IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);
		dao.groupTeamNamemodify(teamName); // 해당 메서드에 팀명 수정 로직 구현
		return "redirect:/groupSetup.action"; // 수정 후 다시 그룹 설정 페이지로 이동
	}

}
