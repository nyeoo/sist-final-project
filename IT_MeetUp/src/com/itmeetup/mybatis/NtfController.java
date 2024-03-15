package com.itmeetup.mybatis;

import javax.servlet.http.HttpSession;

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
	@RequestMapping(value = "/nft.action", method = RequestMethod.GET)
	public String NtfList(HttpSession session, Model model)
	{
		MemberDTO memberStr = (MemberDTO) session.getAttribute("loginDTO"); // 세션에서 가져온 멤버
		String memCode = memberStr.getPiMemCode();
		INtfDAO dao = sqlSession.getMapper(INtfDAO.class);
		
		// 픽 알림
		model.addAttribute("pickNtfList", dao.pickNtfList(memCode));
		
		// 참여지원 확인 알림
		model.addAttribute("partCheckNtfList", dao.partCheckNtfList(memCode));
		
		// 디데이 알림
		model.addAttribute("ddayNtfList", dao.ddayNtfList(memCode));
		
		// 댓글 알림
		model.addAttribute("commentNtfList", dao.commentNtfList(memCode));
		
		// 대댓글 알림
		model.addAttribute("recommentNtfList", dao.recommentNtfList(memCode));
		
		return "/Content/MyPage/NameCard.jsp";
	}
}
