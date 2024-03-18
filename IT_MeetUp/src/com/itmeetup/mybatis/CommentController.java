package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class CommentController
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;
	
	
	// 댓글 입력 쿼리문 실행  
	@RequestMapping(value = "/commentInsert.action" , method = RequestMethod.GET)
	public String insertComment(CommentDTO dto)
	{
		String result = null;
		
		String op_code = dto.getCode();
		ICommentDAO cdao = sqlSession.getMapper(ICommentDAO.class);		
		cdao.insertComment(dto);
		
		
		
		result = "redirect:PostDetail.action?code="+op_code;
		//result = "/projectList.action";
		
		
		return result; 
	}
	
	// 댓글 입력 쿼리문 실행  
	@RequestMapping(value = "/insertRecomment.action" , method = RequestMethod.GET)
	public String insertRecomment(CommentDTO dto)
	{
		String result = null;
		
		String op_code = dto.getCode();
		ICommentDAO cdao = sqlSession.getMapper(ICommentDAO.class);		
		cdao.insertRecomment(dto);
		
		
		
		result = "redirect:PostDetail.action?code="+op_code;
		//result = "/projectList.action";
		
		
		return result; 
	}
	
	// 댓글 삭제 쿼리문 실행  
	@RequestMapping(value = "/commentDelete.action" , method = RequestMethod.GET)
	public String removeRecomment(CommentDTO dto)
	{
		String result = null;
		
		String op_code = dto.getCode();
		System.out.println(op_code +"엥");
		int number = Integer.parseInt(dto.getNumber());
		ICommentDAO cdao = sqlSession.getMapper(ICommentDAO.class);		
		
		cdao.removeRecomment(number);
		cdao.removeComment(number);
		
		
		
		result = "redirect:PostDetail.action?code="+op_code;
		//result = "/projectList.action";
		
		
		return result; 
	}
		
	

}
