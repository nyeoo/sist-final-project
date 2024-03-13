package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReportController
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/insertReport.action", method = RequestMethod.POST)
	public String insertAssignment(ReportListDTO dto)
	{
		IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
		IReportListDAO dao = sqlSession.getMapper(IReportListDAO.class);
	    
		String memCode = dto.getMemCode();
		String opCode = assignmentDAO.searchOpCode(memCode);
	    
	    dao.insertReport(dto);
	    return "redirect:/workManage.action?memCode="+ memCode;
	}
	
}
