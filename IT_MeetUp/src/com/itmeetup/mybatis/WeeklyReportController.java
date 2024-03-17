package com.itmeetup.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WeeklyReportController
{

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/weeklyReport.action", method = RequestMethod.GET)
	public String weeklyReport(ModelMap model, String memCode, @RequestParam(defaultValue = "1") int page)
	{
	    IWeeklyReportDAO dao = sqlSession.getMapper(IWeeklyReportDAO.class);
	    IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
	    String opCode = assignmentDAO.searchOpCode(memCode);

	    // 페이징 처리
	    int showReport = 10; // 페이지에서 보여줄 레코드 수
	    int countReport = dao.countWeeklyReport(opCode); // 전체 게시물 갯수
	    int totalPage = countReport / showReport + (countReport % showReport == 0 ? 0 : 1);

	    int start = (page - 1) * showReport + 1; // 시작 레코드 인덱스
	    int end = page * showReport; // 끝 레코드 인덱스

	    List<WeeklyReportListDTO> weeklyReport = dao.weeklyReport(opCode, start, end);

	    // 페이징 정보 설정
	    model.addAttribute("page", page);
	    model.addAttribute("totalPages", totalPage);

	    // weeklyReport 리스트 추가
	    model.addAttribute("weeklyReport", weeklyReport);

	    return "/Content/MeetGroup/WeeklyReportList.jsp";
	}



	

}