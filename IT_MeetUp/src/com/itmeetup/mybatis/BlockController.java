package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BlockController
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;

	// 알림 리스트 보기
	@RequestMapping(value = "/myinfo.action", method = RequestMethod.GET)
	public String blockList(Model model)
	{
		IBlockDAO dao = sqlSession.getMapper(IBlockDAO.class);
		
		model.addAttribute("blockList", dao.blockList());
		
		return "/Content/MyPage/MyInfo.jsp";
	}
	
	// 차단 삭제 하는 메소드
	@RequestMapping(value = "/remove.action", method = RequestMethod.GET)
	public String remove(int bloNo)
	{
		IBlockDAO dao = sqlSession.getMapper(IBlockDAO.class);
		
		dao.remove(bloNo);
		
		return "redirect:myinfo.action";
	}
}












