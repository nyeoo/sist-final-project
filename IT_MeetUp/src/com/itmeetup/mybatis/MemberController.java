/* ========================
	LoginController.java
===========================*/
package com.itmeetup.mybatis;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

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

	// ========================================[로그인]========================================
	
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
			//viewPage = "/projectList.action";
			viewPage = "/home.action";

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

		return "redirect:/Content/ProjectLounge/PostList.jsp";
	}
	
	// 아이디 찾기>이메일 확인
	/*
	 * @RequestMapping(value="/checkmail.action", method = RequestMethod.GET) public
	 * String checkMail(@RequestParam("piEmail") String piEmail, Model model) {
	 * System.out.println(piEmail); IMemberDAO dao =
	 * sqlSession.getMapper(IMemberDAO.class); model.addAttribute("searchCount",
	 * dao.checkMail(piEmail)); System.out.println("2"+dao.checkMail(piEmail));
	 * return "/Content/Site/SearchIdCount.jsp"; }
	 */
	
	// ========================================[회원가입]========================================
	// 회원가입 폼
	@RequestMapping(value = "/join.action", method = RequestMethod.GET)
	public String joinForm(Model model)
	{
		IMemberDAO memberDao = sqlSession.getMapper(IMemberDAO.class);
		model.addAttribute("jobs", memberDao.jobs());		// 직업 select
		model.addAttribute("meets", memberDao.meets());	// 모임방식 select
		
		IOpenProjectDAO odao = sqlSession.getMapper(IOpenProjectDAO.class); // 지역 select
		model.addAttribute("sidoList",odao.sidoList());
		model.addAttribute("siggList",odao.siggList());
		
		model.addAttribute("skillCategorys", memberDao.skillCategorys());	// 스킬카테고리 select
		model.addAttribute("skills", memberDao.skills());	// 스킬 리스트
		
		SkillProcessor skProcessors = new SkillProcessor();				// 스킬 리스트 조회 및 처리
		model.addAttribute("skProcessors", skProcessors.createSkillMapping());
		
		return "/Content/Site/Join.jsp"; 
	}
	
	// 회원가입 과정
	@RequestMapping(value = "/joininsert.action", method = RequestMethod.GET)
	public String join(MemberDTO member)
	{
		// 개인정보 입력
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		dao.addMember(member);
		//System.out.println("member : "+ member);
		
		// 프로젝트 희망 기술 입력
		List<String> hopeskills = member.getHopeskills();
		dao.addSkill(hopeskills);
		//for(String code : hopeskills) { System.out.println(code); }
		//System.out.println("hopeskills: "+hopeskills);

		//System.out.println("1. 경력 입력 시작");
		List<CareerDTO> careerList = new ArrayList<CareerDTO>();
		List<String> jobNames = member.getJobNames();
		List<String> startDates = member.getStartDates();
		List<String> endDates = member.getEndDates();
		List<String> comNames = member.getComNames();
		//System.out.println(comNames);
		
		for(int i=0; i<jobNames.size(); i++) {
			//System.out.println("1-2. 경력 입력 배열구성 중: " + i);
			CareerDTO careerItem = new CareerDTO();
			careerItem.setJobName(jobNames.get(i));
			careerItem.setStartDate(startDates.get(i));
			careerItem.setEndDate(endDates.get(i));
			careerItem.setComName(comNames.get(i));
			
			//System.out.println(jobNames.get(i) + " " + startDates.get(i) + " " + endDates.get(i) + " " + comNames.get(i));
			careerList.add(careerItem);
		}
		System.out.println("2. 경력 입력을 위한 배열구성 완료");
		dao.addCareer(careerList);
		
		for(CareerDTO code : careerList) { System.out.println(code.getJobName() + " / " + code.getStartDate() + " / " +  code.getEndDate() + " / " +  code.getComName()); }
		System.out.println("3. 완료");
		
		//return "redirect:/Content/ProjectLounge/PostList_ju.jsp";
		return "redirect:/login.action";
	}
	
	// 아이디 중복 검사
	@RequestMapping(value="/checkId.action", method = RequestMethod.GET)
	public String checkId(@RequestParam("piId") String piId, Model model)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		model.addAttribute("searchCount", dao.checkId(piId));
		return "/Content/Site/SearchIdCount.jsp";
	}
	
	// 닉네임 중복 검사
	@RequestMapping(value="/checkNickname.action", method = RequestMethod.GET)
	public String checkNickname(@RequestParam("piNickname") String piNickname, Model model)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		model.addAttribute("searchNicknameCount", dao.checkNickname(piNickname));
		return "/Content/Site/SearchNicknameCount.jsp";
	}
	
	// ========================================[회원가입]========================================
	// 회원가입 폼
	@RequestMapping(value = "/searchid.action", method = RequestMethod.GET)
	public String searchId(@RequestParam("piEmail") String piEmail, Model model)
	{
		
		
		return "";
	}
}
