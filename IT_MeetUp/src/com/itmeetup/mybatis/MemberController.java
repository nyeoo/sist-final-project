/* ========================
	LoginController.java
===========================*/
package com.itmeetup.mybatis;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;

	// ========================================[ 로그인 ]========================================
	
	// 로그인 폼
	// 일반멤버 - ljh1234 / ljh1234
	// 관리자 - admin1 / 1234
	@RequestMapping(value = "/login.action", method = RequestMethod.GET)
	public String loinForm()
	{
		return "/Content/Site/Login.jsp";
	}

	// 로그인 과정
	@RequestMapping(value = "/loginok.action", method = RequestMethod.GET)
	public String handleRequest(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			Model model)
	{
		String viewPage = null;
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		MemberDTO member = null;

		String piId = request.getParameter("piId");
		String piPw = request.getParameter("piPw");
		String admin = request.getParameter("admin");

		if (admin == null)
		{	// 일반멤버
			member = new MemberDTO();
			member = dao.getMember(piId, piPw);
		} else
		{	// 관리자
			member = new MemberDTO();
			member.setAdmin(1);
			member = dao.getAdmin(piId, piPw);
		}

		if (member != null)
		{ // 로그인O
			session.setMaxInactiveInterval(30*60);	// 세션 유효시간 30분 설정
			session.setAttribute("loginDTO", member);
			viewPage = "/Content/Home/Home.jsp";

		} else
		{ // 로그인X
			viewPage = "redirect:/login.action";

		}

		return viewPage;
	}

	// 로그아웃 과정
	@RequestMapping(value = "/logout.action")
	public String logout(HttpSession session)
	{
		session.removeAttribute("loginDTO");
		session.invalidate();	// 세션제거

		return "redirect:/Content/Home/Home.jsp";
	}
	
	// ========================================[ 회원가입 ]========================================
	// 회원가입 폼
	@RequestMapping(value = "")
	public String joinForm()
	{
		return "/Content/Site/Join.jsp";
	}
	
	
	
}
