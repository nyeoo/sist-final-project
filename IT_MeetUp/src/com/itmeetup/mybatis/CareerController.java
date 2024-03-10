package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CareerController
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;
	
	
	// 리스트 보기
	@RequestMapping(value = "/career.action", method = RequestMethod.GET)
	public String careerList(Model model) 
	{
	    ICareerDAO dao = sqlSession.getMapper(ICareerDAO.class);
	    
	    model.addAttribute("careerList", dao.careerList());
	    
	    return "/Content/MyPage/NameCard.jsp";
	}
	
	



	
	
	
}
