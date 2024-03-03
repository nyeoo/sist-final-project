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
		model.addAttribute("cateList",dao.cateList());
		model.addAttribute("sidoList",dao.sidoList());
		model.addAttribute("siggList",dao.siggList());
		model.addAttribute("carList",dao.carList());
		
		result = "/Content/ProjectLounge/WriteForm1.jsp";
		
		return result; 
	}
	
	
	@RequestMapping(value = "/WriteForm2.action" , method = RequestMethod.POST)
	public String WriteForm2List(ModelMap model ,@RequestParam("startDate") String startDate,  @RequestParam("endDate") String endDate) 
	{
		String result = null;
		
		IJobDAO jdao = sqlSession.getMapper(IJobDAO.class);

		model.addAttribute("startDate",startDate);
		model.addAttribute("endDate",endDate);
		model.addAttribute("jobs",jdao.jobs());
		
		result = "/Content/ProjectLounge/WriteForm2.jsp";
		
		return result; 
	}
	
	@RequestMapping(value = "/WriteForm3.action" , method = RequestMethod.POST)
	public String WriteForm3List(ModelMap model)
	{
		String result = null;
		
		
		
		result = "/Content/ProjectLounge/WriteForm3.jsp";
		
		return result; 
	}
}
