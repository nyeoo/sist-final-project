/* ========================
	LoginController.java
===========================*/
package com.itmeetup.mybatis;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
			session.removeAttribute("admin");
			session.setAttribute("admin", "0");
		} else
		{	// 관리자
			member = new MemberDTO();
			member = dao.getAdmin(piId, piPw);
			session.removeAttribute("admin");
			session.setAttribute("admin", "1");
		}

		if (member != null)
		{ // 로그인O
			session.setMaxInactiveInterval(30*60);	// 세션 유효시간 30분 설정
			session.setAttribute("loginDTO", member);
			//viewPage = "/Content/ProjectLounge/PostList_ju.jsp";
			
			// 주형이가 추가함 
			viewPage = "/projectList.action";

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
		session.removeAttribute("admin");
		session.removeAttribute("loginDTO");
		session.invalidate();	// 세션제거

		return "redirect:/Content/ProjectLounge/PostList_ju.jsp";
	}
	
	// ========================================[ 회원가입 ]========================================
	// 회원가입 폼
	@RequestMapping(value = "/join.action", method = RequestMethod.GET)
	public String joinForm(ModelMap model)
	{
		IMemberDAO jobDAO = sqlSession.getMapper(IMemberDAO.class);		// 직업 select
		model.addAttribute("jobs", jobDAO.jobs());
		
		IMemberDAO meetDAO = sqlSession.getMapper(IMemberDAO.class);	// 모임방식 select
		model.addAttribute("meets", meetDAO.meets());
		
		IOpenProjectDAO odao = sqlSession.getMapper(IOpenProjectDAO.class); // 지역 select
		model.addAttribute("sidoList",odao.sidoList());
		model.addAttribute("siggList",odao.siggList());
		
		IMemberDAO skillCategoryDAO = sqlSession.getMapper(IMemberDAO.class);	// 스킬카테고리 select
		model.addAttribute("skillCategorys", skillCategoryDAO.skillCategorys());
		
		IMemberDAO skillsDAO = sqlSession.getMapper(IMemberDAO.class);	// 스킬 리스트
		model.addAttribute("skills", skillsDAO.skills());
		
		SkillProcessor skProcessors = new SkillProcessor();				// 스킬 리스트 조회 및 처리
		model.addAttribute("skProcessors", skProcessors.createSkillMapping());
		
		return "/Content/Site/Join.jsp"; 
	}
	
	// 회원가입 과정
	@RequestMapping(value = "/joininsert.action", method = RequestMethod.GET)
	public String join(MemberDTO member)
	{
		IMemberDAO joinDAO = sqlSession.getMapper(IMemberDAO.class);
		joinDAO.addMember(member);
		
		return "redirect:/Content/ProjectLounge/PostList_ju.jsp";
	}
	
	// 아이디 중복 검사
	@RequestMapping(value="/checkId.action", method = RequestMethod.GET)
	public String checkId(@RequestParam("piId") String piId, ModelMap model)
	{
		IMemberDAO checkIdDAO = sqlSession.getMapper(IMemberDAO.class);
		model.addAttribute("searchCount", checkIdDAO.checkId(piId));
		return "/Content/Site/SearchIdCount.jsp";
	}
	
	// 닉네임 중복 검사
	@RequestMapping(value="/checkNickname.action", method = RequestMethod.GET)
	public String checkNickname(@RequestParam("piNickname") String piNickname, ModelMap model)
	{
		IMemberDAO checkNicknameDAO = sqlSession.getMapper(IMemberDAO.class);
		model.addAttribute("searchNicknameCount", checkNicknameDAO.checkNickname(piNickname));
		return "/Content/Site/SearchNicknameCount.jsp";
	}

}
