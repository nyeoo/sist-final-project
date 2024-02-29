package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController
{
	// 주요 속성 구성
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/home.action", method = RequestMethod.GET)
	public String Home(Model model)
	{
		IHomeDAO dao = sqlSession.getMapper(IHomeDAO.class);
		
		model.addAttribute("popList", dao.popList());
		model.addAttribute("newList", dao.newList());

		return "/Content/Home/Home.jsp";
	}
	

	
	
	
}
