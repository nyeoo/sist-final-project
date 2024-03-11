package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AssignmentController
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/assignmentInsert.action" , method = RequestMethod.GET)
	public String InsertAssignment (AssignmentDTO dto )
	{
		
		 String result = null;
		 
		 		  	
		 result = "/Content/MeetGroup/WorkManage.jsp";
		  
		  
		  return result;
		 
	}
	
	
}
