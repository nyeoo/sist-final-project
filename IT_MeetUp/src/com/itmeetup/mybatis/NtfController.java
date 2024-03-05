package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NtfController
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;
	
	// 알림 리스트 보기
	@RequestMapping(value = "/.action", method = RequestMethod.GET)
	public String pickNtfList(Model model)
	{
		INtfDAO dao = sqlSession.getMapper(INtfDAO.class);
		
		// 픽 알림
		model.addAttribute("pickNtfList", dao.pickNtfList());
		
		// 참여지원 확인 알림
		model.addAttribute("partCheckNtfList", dao.partCheckNtfList());
		
		return "/Content/Site/Indict.jsp";
	}
}
