package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProjectController
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;

	// 프로젝트 리스트 출력으로 이동  
	@RequestMapping(value = "/projectList.action" , method = RequestMethod.GET)
	public String projectList(ModelMap model)
	{
		String result =null;
		
		IOpenProjectDAO dao = sqlSession.getMapper(IOpenProjectDAO.class);
			
		model.addAttribute("openList",dao.openList());
		model.addAttribute("cateList",dao.cateList());
		model.addAttribute("sidoList",dao.sidoList());
		model.addAttribute("siggList",dao.siggList());
		model.addAttribute("carList",dao.carList());
		
		result = "/Content/ProjectLounge/PostList_ju.jsp";
						   
		return result;
	}
	
	// 사용자가 누른 프로젝트 상세 페이지로 이동
	@RequestMapping(value = "/PostDetail.action" , method = RequestMethod.GET)
	public String PostDeatil(ModelMap model ,String code)
	{
		String result =null;
		
		IOpenProjectDAO dao = sqlSession.getMapper(IOpenProjectDAO.class);
			
		model.addAttribute("choicProList",dao.choiceProList(code));
	
		
		result = "/Content/ProjectLounge/PostDetail.jsp";
						   
		return result;
	}
	
}
