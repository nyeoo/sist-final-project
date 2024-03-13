package com.itmeetup.mybatis;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OpenProjectController
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;

	// 프로젝트 리스트 출력으로 이동  
	@RequestMapping(value = "/projectList.action" , method = RequestMethod.GET)
	public String projectList(ModelMap model,HttpSession session)
	{
		String result =null;
		
		IOpenProjectDAO dao = sqlSession.getMapper(IOpenProjectDAO.class);
		//IJobDAO jdao = sqlSession.getMapper(IJobDAO.class);
		
		
		// 프로젝트 해당하는 기술 담기
		Map<String,ArrayList<String>> skills = new HashMap<String, ArrayList<String>>();
		// 프로젝트 해당하는 직위 담기
		//Map<String,ArrayList<JobDTO>> jobInfo = new HashMap<String, ArrayList<JobDTO>>();
		
		
		MemberDTO member = (MemberDTO)session.getAttribute("loginDTO");
		
		ArrayList<String> wishList = dao.wishList(member.getPiMemCode());
		
		ArrayList<OpenProjectDTO> project = dao.openList();		
		
		for (OpenProjectDTO dto : project)
		{
			skills.put(dto.getCode(), dao.skillList(dto.getCode()));
			//jobInfo.put(dto.getCode(), jdao.jobList((dto.getCode())));
		}
		
		IMemberDAO skillCategoryDAO = sqlSession.getMapper(IMemberDAO.class);	// 스킬카테고리 select
		IMemberDAO skillsDAO = sqlSession.getMapper(IMemberDAO.class);			// 스킬 리스트
		SkillProcessor skProcessors = new SkillProcessor();						// 스킬 리스트 조회 및 처리
		model.addAttribute("skProcessors", skProcessors.createSkillMapping());
		model.addAttribute("skillCategorys", skillCategoryDAO.skillCategorys());
		model.addAttribute("lastCode",dao.lastCode());							// 가장 최근 프로젝트 개설 코드 뽑기
		model.addAttribute("skills", skillsDAO.skills());
		
		model.addAttribute("wishList", wishList);								// 사용자 찜목록 
		
		model.addAttribute("openList",dao.openList());
		model.addAttribute("deadlineList",dao.deadlineList());
		model.addAttribute("cateList",dao.cateList());
		model.addAttribute("sidoList",dao.sidoList());
		model.addAttribute("siggList",dao.siggList());
		model.addAttribute("carList",dao.carList());
		model.addAttribute("skill",skills);
		//model.addAttribute("jobInfo",jobInfo);
		
		
		
		result = "/Content/ProjectLounge/PostList_ju.jsp";
		return result;
	}
	
	// 사용자가 누른 프로젝트 상세 페이지로 이동
	@RequestMapping(value = "/PostDetail.action" , method = RequestMethod.GET)
	public String PostDeatil(ModelMap model ,String code, String memcode)
	{
		String result =null;
		
		IOpenProjectDAO dao = sqlSession.getMapper(IOpenProjectDAO.class);
		IJobDAO jdao = sqlSession.getMapper(IJobDAO.class);
		ICommentDAO cdao = sqlSession.getMapper(ICommentDAO.class);
		IPickDAO pdao = sqlSession.getMapper(IPickDAO.class);
		
		Map<String,ArrayList<CommentDTO>> recomments = new HashMap<String, ArrayList<CommentDTO>>();
		ArrayList<CommentDTO> recomment = cdao.commentList(code);
		for(CommentDTO cdto : recomment)
		{
			recomments.put(cdto.getNumber() , cdao.recommentList((cdto.getNumber())));
		}
		
		dao.viewUpdate(code);											// 해당 프로젝트 조회수 증가 
		model.addAttribute("choicProList",dao.choiceProList(code));		// 해당 프로젝트 정보 뽑기
		model.addAttribute("skillList",dao.skillList(code));			// 해당 프로젝트 기술 뽑기
		model.addAttribute("jobs",jdao.jobList(code));					// 해당 프로젝트 직무 뽑기
		model.addAttribute("comments",cdao.commentList(code));			// 댓글 뽑기
		model.addAttribute("count",cdao.countComment(code));			// 댓글 개수 세기
		model.addAttribute("recomments",recomments);					// 대댓글 뽑기

		model.addAttribute("pickList",pdao.sinchungList(code));			// 해당 직무의 지원한 사람 보여주기 
		model.addAttribute("sinchung",pdao.sinchung(code));			    // 신청할 정보 뿌려주기
		
	
		result = "/Content/ProjectLounge/PostDetail.jsp";
						   
		return result;
	}
	
	// 사용자가 누른 프로젝트 찜하기
	@RequestMapping(value = "/addWish.action" , method = RequestMethod.GET)
	public String InsertWish(OpenProjectDTO dto ,HttpSession session)
	{
		String result =null;
		
		
		MemberDTO member = (MemberDTO)session.getAttribute("loginDTO");
		IOpenProjectDAO dao = sqlSession.getMapper(IOpenProjectDAO.class);
		String memCode = member.getPiMemCode();
		
		// 테스트 
		System.out.println(memCode);
		dto.setMemCode(memCode);
		
		int a= dao.addWish(dto);	
		
		if(a>0)
		{
			
			result = "/projectList.action";
		}
		else
		{
			System.out.println("에러 발생");
		}
		
						   
		return result;
	}
	
	// 사용자가 누른 프로젝트 찜  삭제
	@RequestMapping(value = "/removeWish.action" , method = RequestMethod.GET)
	public String removeWish(OpenProjectDTO dto ,HttpSession session)
	{
		String result =null;
		
		
		MemberDTO member = (MemberDTO)session.getAttribute("loginDTO");
		IOpenProjectDAO dao = sqlSession.getMapper(IOpenProjectDAO.class);
		String memCode = member.getPiMemCode();
		
		// 테스트 
		System.out.println(memCode);
		dto.setMemCode(memCode);
		
		int a= dao.removeWish(dto);	
		
		if(a>0)
		{
			
			result = "/projectList.action";
		}
		else
		{
			System.out.println("에러 발생");
		}
		
						   
		return result;
	}
	
	
	// 필터 적용 프로젝트 출력 
	@RequestMapping(value = "/filterList.action" , method = RequestMethod.GET)
	public String filterList(ModelMap model, OpenProjectDTO dto ,HttpSession session)
	{
		String result =null;
		IOpenProjectDAO dao = sqlSession.getMapper(IOpenProjectDAO.class);
		//IJobDAO jdao = sqlSession.getMapper(IJobDAO.class);
		
//		
//		// 프로젝트 해당하는 기술 담기
//		Map<String,ArrayList<String>> skills = new HashMap<String, ArrayList<String>>();
//		// 프로젝트 해당하는 직위 담기
//		//Map<String,ArrayList<JobDTO>> jobInfo = new HashMap<String, ArrayList<JobDTO>>();
//		
//		
//		MemberDTO member = (MemberDTO)session.getAttribute("loginDTO");
//		
//		ArrayList<String> wishList = dao.wishList(member.getPiMemCode());
//		
//		ArrayList<OpenProjectDTO> project = dao.openList();		
//		
//		for (OpenProjectDTO dto : project)
//		{
//			skills.put(dto.getCode(), dao.skillList(dto.getCode()));
//			//jobInfo.put(dto.getCode(), jdao.jobList((dto.getCode())));
//		}
//		
//		IMemberDAO skillCategoryDAO = sqlSession.getMapper(IMemberDAO.class);	// 스킬카테고리 select
//		IMemberDAO skillsDAO = sqlSession.getMapper(IMemberDAO.class);			// 스킬 리스트
//		SkillProcessor skProcessors = new SkillProcessor();						// 스킬 리스트 조회 및 처리
//		model.addAttribute("skProcessors", skProcessors.createSkillMapping());
//		model.addAttribute("skillCategorys", skillCategoryDAO.skillCategorys());
//		model.addAttribute("lastCode",dao.lastCode());							// 가장 최근 프로젝트 개설 코드 뽑기
//		model.addAttribute("skills", skillsDAO.skills());
//		
//		model.addAttribute("wishList", wishList);								// 사용자 찜목록 
//		
//		model.addAttribute("openList",dao.openList());
//		model.addAttribute("deadlineList",dao.deadlineList());
//		model.addAttribute("cateList",dao.cateList());
//		model.addAttribute("sidoList",dao.sidoList());
//		model.addAttribute("siggList",dao.siggList());
//		model.addAttribute("carList",dao.carList());
//		model.addAttribute("skill",skills);
//		//model.addAttribute("jobInfo",jobInfo);
//		
//		
//		
//		result = "/Content/ProjectLounge/PostList_ju.jsp";
//		 
//		if(a>0)
//		{
//			
//			result = "/projectList.action";
//		}
//		else
//		{
//			System.out.println("에러 발생");
//		}
		
						   
		return result;
	}
	
	
}
