package com.itmeetup.mybatis;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController
{
	// 주요 속성 구성
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/home.action", method = RequestMethod.GET)
	public String Home(Model model)
	{
		IHomeDAO dao = sqlSession.getMapper(IHomeDAO.class);
		
		
		HashMap<String, ArrayList<String>> skillList = new HashMap<String, ArrayList<String>>();
		ArrayList<OpenProjectDTO> project = dao.popList();
		for (OpenProjectDTO dto : project)
		{
			ArrayList<String> processedSkills = SkillProcessor.processSkills(dao.skills(dto.getCode()));
			skillList.put(dto.getCode(), processedSkills);
			//skillList.put(dto.getCode(), dao.skills(dto.getCode()));
			//System.out.println(dto.getCode());
			//System.out.println(dao.skills(dto.getCode()));
		}
		
		
		model.addAttribute("skillList", skillList);
		model.addAttribute("popList", dao.popList());
		model.addAttribute("newList", dao.newList());

		return "/Content/Home/Home.jsp";
		
		
	}
	
}