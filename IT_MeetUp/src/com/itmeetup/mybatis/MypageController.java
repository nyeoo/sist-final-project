package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;
	// ========================================[ 마이페이지 ]========================================
		@RequestMapping(value = "/myinfo.action", method = RequestMethod.GET)
		public String myinfoForm()
		{
			return "/Content/MyPage/MyInfo.jsp";
		}
		
	// ========================================[ 네임카드 ]========================================
	@RequestMapping(value = "/namecard.action", method = RequestMethod.GET)
	public String namecardForm()
	{
		return "/Content/MyPage/NameCard.jsp";
	}
	
}
