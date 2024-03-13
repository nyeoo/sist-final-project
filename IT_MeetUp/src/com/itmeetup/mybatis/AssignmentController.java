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
		String memCode = dto.getMemCode();
		IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
		String indicator = assignmentDAO.searchPcCode(memCode);
		dto.setIndicator(indicator);

		assignmentDAO.insertAssignment(dto);

		return "redirect:/WorkManage.action?memCode=" + memCode;

	}

	/*
	 * @RequestMapping(value = "/selectAssignment.action", method =
	 * RequestMethod.GET) public String selectAssignment(ModelMap model, String
	 * ssCode, String memCode) { // ssCode를 사용하여 필요한 작업을 수행하고, // 그에 따른 결과를
	 * ModelMap에 담거나 직접 처리합니다. // 예시: ssCode를 사용하여 해당 업무 분류를 가져오는 작업 수행
	 * IAssignmentListDAO dao = sqlSession.getMapper(IAssignmentListDAO.class);
	 * ArrayList<AssignmentDTO>outputList = dao.searchOutputList(ssCode);
	 * 
	 * // 결과를 ModelMap에 담아서 JSP로 전달 model.addAttribute("searchOutputList",
	 * outputList); for (AssignmentDTO assignment : outputList) {
	 * System.out.println(assignment.getOuCode() + ": " + assignment.getOuName()); }
	 * // 이후에 리다이렉트할 URL을 반환하거나 직접 처리합니다. // 여기서는 예시로 "redirect:/assignment.action"을
	 * 반환합니다. //return "redirect:/assignment.action?memCode=" + memCode; return
	 * "NewFile.jsp"; }
	 */
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
