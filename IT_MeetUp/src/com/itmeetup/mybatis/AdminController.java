package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/admin.action", method = RequestMethod.GET)
	public String adminList(Model model)
	{
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		
		model.addAttribute("adminList", dao.adminList());
		
		return "/Content/Site/AdminPage.jsp";
	}
	
	
}
