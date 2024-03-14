package com.itmeetup.mybatis;

import javax.servlet.http.HttpServletRequest;

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

	/*@RequestMapping(value = "/insertReport.action", method = RequestMethod.POST)
	public String insertReport(ReportListDTO dto, String assCode)
	{
		IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
		IReportListDAO dao = sqlSession.getMapper(IReportListDAO.class);
		String memCode = dto.getMemCode();
		//String opCode = assignmentDAO.searchOpCode(memCode);
	    dao.insertReport(dto);
	    dao.insertActualTech(dto);
	    return "redirect:/workManage.action?memCode="+ memCode;
	}*/
	
	@RequestMapping(value = "/insertReport.action", method = RequestMethod.POST)
	public String insertReport(ReportListDTO dto, String assCode, HttpServletRequest request)
	{
	    IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
	    IReportListDAO dao = sqlSession.getMapper(IReportListDAO.class);
	    String memCode = dto.getMemCode();
	    dao.insertReport(dto); // 업무보고 INSERT
	    
	    String opCode = assignmentDAO.searchOpCode(memCode); // 회원의 개설요청 코드
	    int repNumber = dao.searchRepNo(opCode);
	    
	    // 선택한 기술을 가져옴
	    String[] selectedSkills = request.getParameterValues("hopeskills");
	    if (selectedSkills != null)
	    {
	        for (String skCode : selectedSkills)
	        {
	            // 보고서 정보를 복제하여 각각의 기술에 대해 삽입
	            ReportListDTO clonedDto = new ReportListDTO();
	            clonedDto.setMemCode(dto.getMemCode());
	            clonedDto.setRepTitle(dto.getRepTitle());
	            clonedDto.setRepContent(dto.getRepContent());
	            clonedDto.setRepStartDate(dto.getRepStartDate());
	            clonedDto.setRepEndDate(dto.getRepEndDate());
	            clonedDto.setRepDate(dto.getRepDate());
	            clonedDto.setRepFile(dto.getRepFile());
	            clonedDto.setAssCode(dto.getAssCode());
	            clonedDto.setRepNumber(repNumber);
	            clonedDto.setSkCode(skCode);
	            dao.insertActualTech(clonedDto); // 선택한 기술을 ACTUAL_TECH 테이블에 반복적으로 INSERT
	        }
	    }

	    return "redirect:/workManage.action?memCode=" + memCode;
	}

	
}
