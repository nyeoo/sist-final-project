package com.itmeetup.mybatis;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PickController
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;

	// 신청하기
	@RequestMapping(value = "/sinchung.action" , method = RequestMethod.GET)
	public String pickInsert(PickDTO dto ,String code)
	{
		String result = null;
		IPickDAO  dao = sqlSession.getMapper(IPickDAO.class);
		
		dao.projectJoin(dto);
		
		result = "redirect:PostDetail.action?code="+code;
							
		return result;
	}
	// 픽하기  
	@RequestMapping(value = "/updatePick.action" , method = RequestMethod.GET)
	public String pickUpdate(PickDTO dto ,String code)
	{
		String result = null;
		IPickDAO  dao = sqlSession.getMapper(IPickDAO.class);
		
		dao.pickUpdate(dto);
		
		result = "redirect:PostDetail.action?code="+code;
		
							
							
		return result;
	}
	
}
