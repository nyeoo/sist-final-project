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
			
			return "/Content/MeetGroup/GroupSetup.jsp";
			//result = "/Content/MeetGroup/GroupSetup.jsp";
			//return result;
		}
}
