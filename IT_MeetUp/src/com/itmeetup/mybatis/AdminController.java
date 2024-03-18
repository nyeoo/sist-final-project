package com.itmeetup.mybatis;

import javax.servlet.http.HttpSession;

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
	public String adminList(HttpSession session, Model model)
	{
		MemberDTO memberStr = (MemberDTO) session.getAttribute("loginDTO"); // 세션에서 가져온 멤버
		int adNo = memberStr.getAdmin();
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		
		model.addAttribute("adminList", dao.adminList(adNo));
		System.out.println(dao.adminList(adNo));
		
		return "/Content/Site/AdminPage.jsp";
	}
	
	
}
