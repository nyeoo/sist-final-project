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
		
		// 전체 학생 조회
		@RequestMapping(value = "/groupSetup.action", method = RequestMethod.GET)
		public String groupSetupList(ModelMap model)
		{
			//String result = null;
			IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);
			
			model.addAttribute("groupSetupList", dao.groupSetupList());
			model.addAttribute("groupTeamName", dao.groupTeamName());
			
			return "/Content/MeetGroup/GroupSetup.jsp";
		}
		
		@RequestMapping(value = "/groupSetupUpdate.action")
		public String GroupTeamNamesearchId(int code, ModelMap model)
		{
			//String result = null;
			IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);
			
			OpenProjectDTO opdto = new OpenProjectDTO();
			
			opdto = dao.GroupTeamNamesearchId(code);
			
			model.addAttribute("opdto", opdto);
			
			return "/Content/MeetGroup/GroupSetupMod.jsp";
		}
		
		
		@RequestMapping(value = "/groupteamnamemodify.action")
		public String GroupTeamNamemodify(OpenProjectDTO opdto)
		{
			IGroupSetupDAO dao = sqlSession.getMapper(IGroupSetupDAO.class);
			
			dao.GroupTeamNamemodify(opdto);
			
			return "redirect:groupsetup.action";
		}
		
}
