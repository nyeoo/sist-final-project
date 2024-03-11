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
	public String pickInsert(PickDTO dto )
	{
		String result = null;
		IPickDAO  dao = sqlSession.getMapper(IPickDAO.class);
		String code = dto.getCode();
		try
		{
			System.out.println("신청시작");
			dao.projectJoin(dto);
			
			System.out.println("신청끝");
			
		} catch (Exception e)
		{
			// TODO: handle exception
			System.out.println(e.toString());
		}
		
		result = "redirect:/PostDetail.action?code="+code;
							
		return result;
	}
	
	// 픽하기  
	@RequestMapping(value = "/updatePick.action" , method = RequestMethod.GET)
	public String pickUpdate(PickDTO dto )
	{
		String result = null;
		String code = dto.getCode();
		IPickDAO  dao = sqlSession.getMapper(IPickDAO.class);
		System.out.println("픽 시작");
		dao.pickUpdate(dto);
		System.out.println("픽 끝");
		
		result = "redirect:/PostDetail.action?code="+code;
		
							
							
		return result;
	}
	
}
