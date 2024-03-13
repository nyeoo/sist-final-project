package com.itmeetup.mybatis;

import java.util.ArrayList;

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

	@RequestMapping(value = "/insertAssignment.action", method = RequestMethod.POST)
	public String insertAssignment(AssignmentDTO dto)
	{
	    IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
	    String memCode = dto.getMemCode();
	    String indicator = assignmentDAO.searchPcCode(memCode);
	    String opCode = assignmentDAO.searchOpCode(memCode);
	    
	    String ssCode = dto.getSsCode();
	    int sdNo = assignmentDAO.searchSdNo(opCode, ssCode); // opCode와 ssCode 둘 다 전달

	    dto.setSdNo(sdNo);
	    dto.setIndicator(indicator);
	    
	    assignmentDAO.insertAssignment(dto);
	    return "redirect:/workManage.action?memCode="+ memCode;
	}

	@RequestMapping(value = "/selectAssignment.action", method = RequestMethod.GET)
	public String selectAssignment(ModelMap model, String ssCode, String memCode)
	{
	    IAssignmentListDAO dao = sqlSession.getMapper(IAssignmentListDAO.class);
	    ArrayList<AssignmentDTO> outputList = dao.searchOutputList(ssCode);
	    
	    // 결과를 ModelMap에 담아서 JSP로 전달
	    model.addAttribute("searchOutputList", outputList);
	    
	    return "/Content/MeetGroup/ForWardAssignment.jsp"; // 수정된 부분: 배열을 다시 JSP로 반환
	}

}
