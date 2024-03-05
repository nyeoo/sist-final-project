package com.itmeetup.mybatis;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WriteFormControl
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;
	
	
	// 모집 공고작성 페이지로 이동 
	@RequestMapping(value = "/WriteFormControl.action" , method = RequestMethod.GET)
	public String WriteFormList(ModelMap model)
	{
		String result = null;
		
		IOpenProjectDAO dao = sqlSession.getMapper(IOpenProjectDAO.class);
		IJobDAO jdao = sqlSession.getMapper(IJobDAO.class);
		IMemberDAO skillCategoryDAO = sqlSession.getMapper(IMemberDAO.class);	// 스킬카테고리 select
		IMemberDAO skillsDAO = sqlSession.getMapper(IMemberDAO.class);			// 스킬 리스트

		model.addAttribute("cateList",dao.cateList());							// 카테고리 뽑기	
		model.addAttribute("sidoList",dao.sidoList());							// 시군구 뽑기
		model.addAttribute("siggList",dao.siggList());							// 시군구 뽑기
		model.addAttribute("carList",dao.carList());							// 경력 코드
		model.addAttribute("jobs",jdao.jobs());									// 직무 뽑기
		model.addAttribute("skillCategorys", skillCategoryDAO.skillCategorys());
		
		model.addAttribute("skills", skillsDAO.skills());
		
		SkillProcessor skProcessors = new SkillProcessor();						// 스킬 리스트 조회 및 처리
		model.addAttribute("skProcessors", skProcessors.createSkillMapping());
		
		
		
		result = "/Content/ProjectLounge/rewriteForm.jsp";
		
		return result; 
	}
	
	
//	@RequestMapping(value = "/WriteForm2.action" , method = RequestMethod.POST)
//	public String WriteForm2List(ModelMap model ,@RequestParam("startDate") String startDate,  @RequestParam("endDate") String endDate) 
//	{
//		String result = null;
//		
//		IOpenProjectDAO odao = sqlSession.getMapper(IOpenProjectDAO.class);
//
//		model.addAttribute("carList",odao.carList());
//		model.addAttribute("startDate",startDate);
//		model.addAttribute("endDate",endDate);
//		
//		result = "/Content/ProjectLounge/WriteForm2.jsp";
//		
//		return result; 
//	}
//	
//	@RequestMapping(value = "/WriteForm3.action" , method = RequestMethod.POST)
//	public String WriteForm3List(ModelMap model)
//	{
//		String result = null;
//		
//		
//		
//		result = "/Content/ProjectLounge/WriteForm3.jsp";
//		
//		return result; 
//	}
}
