/*===========================
	IndictController.java
	- 컨트롤러 객체
===========================*/

package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndictController
{
	// 주요 속성 구성

	@Autowired
	private SqlSession sqlSession;

	// 리스트 보기
	@RequestMapping(value = "/indict.action", method = RequestMethod.GET)
	public String indictList(Model model)
	{
		IIndictDAO dao = sqlSession.getMapper(IIndictDAO.class);
		IIndictProcessDAO dao1 = sqlSession.getMapper(IIndictProcessDAO.class);

		// 신고처리 상세 내용
		model.addAttribute("idtProcessList", dao1.idtProcessList());

		// 각 신고 항목들 리스트
		model.addAttribute("teamOpenIdtList", dao.teamOpenIdtList());
		model.addAttribute("commentIdtList", dao.commentIdtList());
		model.addAttribute("recommentIdtList", dao.recommentIdtList());
		model.addAttribute("assignmentIdtList", dao.assignmentIdtList());
		model.addAttribute("reportIdtList", dao.reportIdtList());
		model.addAttribute("weeklyIdtList", dao.weeklyIdtList());

		return "/Content/Site/Indict.jsp";
	}

	// 팀 개설 신고 업데이트
	@RequestMapping(value = "/teamopenindictupdate.action", method = RequestMethod.GET)
	public String indictListUpdate(IndictDTO indict)
	{
		IIndictDAO dao = sqlSession.getMapper(IIndictDAO.class);

		dao.teamOpenIdtListUpdate(indict);

		return "redirect:indict.action";
	}

	// 댓글 신고 업데이트
	@RequestMapping(value = "/commentindictupdate.action", method = RequestMethod.GET)
	public String commentIdtListUpdate(IndictDTO indict)
	{
		IIndictDAO dao = sqlSession.getMapper(IIndictDAO.class);

		dao.commentIdtListUpdate(indict);

		return "redirect:indict.action";
	}

	// 대댓글 신고 업데이트
	@RequestMapping(value = "/recommentindictupdate.action", method = RequestMethod.GET)
	public String recommentIdtListUpdate(IndictDTO indict)
	{
		IIndictDAO dao = sqlSession.getMapper(IIndictDAO.class);

		dao.recommentIdtListUpdate(indict);

		return "redirect:indict.action";
	}
	
	// 업무할당 신고 업데이트
	@RequestMapping(value = "/assignmentidtlistupdate.action", method = RequestMethod.GET)
	public String assignmentIdtListUpdate(IndictDTO indict)
	{
		IIndictDAO dao = sqlSession.getMapper(IIndictDAO.class);

		dao.assignmentIdtListUpdate(indict);

		return "redirect:indict.action";
	}
	
	// 업무보고 신고 업데이트
	@RequestMapping(value = "/reportidtlistupdate.action", method = RequestMethod.GET)
	public String reportIdtListUpdate(IndictDTO indict)
	{
		IIndictDAO dao = sqlSession.getMapper(IIndictDAO.class);

		dao.reportIdtListUpdate(indict);

		return "redirect:indict.action";
	}
	
	// 주간업무보고 신고 업데이트
	@RequestMapping(value = "/weeklyidtlistupdate.action", method = RequestMethod.GET)
	public String weeklyIdtListUpdate(IndictDTO indict)
	{
		IIndictDAO dao = sqlSession.getMapper(IIndictDAO.class);

		dao.weeklyIdtListUpdate(indict);

		return "redirect:indict.action";
	}
}
