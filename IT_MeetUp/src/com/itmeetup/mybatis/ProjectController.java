package com.itmeetup.mybatis;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
		IJobDAO jdao = sqlSession.getMapper(IJobDAO.class);
		
		// 프로젝트 해당하는 기술 담기
		Map<String,ArrayList<String>> skills = new HashMap<String, ArrayList<String>>();
		// 프로젝트 해당하는 직위 담기
		Map<String,ArrayList<String>> jobs = new HashMap<String, ArrayList<String>>();
		
		ArrayList<OpenProjectDTO> project = dao.openList();		
		
		for (OpenProjectDTO dto : project)
		{
			skills.put(dto.getCode(), dao.skillList(dto.getCode()));
			jobs.put(dto.getCode(), jdao.jobList((dto.getCode())));
		}
		
		
		
		model.addAttribute("openList",dao.openList());
		model.addAttribute("cateList",dao.cateList());
		model.addAttribute("sidoList",dao.sidoList());
		model.addAttribute("siggList",dao.siggList());
		model.addAttribute("carList",dao.carList());
		model.addAttribute("skills",skills);
		model.addAttribute("jobs",jobs);
		
		result = "/Content/ProjectLounge/PostList_ju.jsp";
						   
		return result;
	}
	
	// 사용자가 누른 프로젝트 상세 페이지로 이동
	@RequestMapping(value = "/PostDetail.action" , method = RequestMethod.GET)
	public String PostDeatil(ModelMap model ,String code)
	{
		String result =null;
		
		IOpenProjectDAO dao = sqlSession.getMapper(IOpenProjectDAO.class);
		IJobDAO jdao = sqlSession.getMapper(IJobDAO.class);
		ICommentDAO cdao = sqlSession.getMapper(ICommentDAO.class);
		
		Map<String,ArrayList<CommentDTO>> recomments = new HashMap<String, ArrayList<CommentDTO>>();
		ArrayList<CommentDTO> recomment = cdao.commentList(code);
		for(CommentDTO cdto : recomment)
		{
			recomments.put(cdto.getNumber() , cdao.recommentList((cdto.getNumber())));
		}
		
		model.addAttribute("choicProList",dao.choiceProList(code));
		model.addAttribute("skillList",dao.skillList(code));
		model.addAttribute("jobs",jdao.jobList(code));
		model.addAttribute("comments",cdao.commentList(code));
		model.addAttribute("count",cdao.countComment(code));
		model.addAttribute("recomments",recomments);
		
		
		
		result = "/Content/ProjectLounge/PostDetail.jsp";
						   
		return result;
	}
	
	
	
}
