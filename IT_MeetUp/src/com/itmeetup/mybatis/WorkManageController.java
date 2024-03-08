package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WorkManageController
{

    @Autowired
    private SqlSession sqlSession;

    @RequestMapping(value = "/workManage.action", method = RequestMethod.GET)
    public String workManage(ModelMap model)
    {
        IScheduleDAO scheduleDAO = sqlSession.getMapper(IScheduleDAO.class);
        IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
        IReportListDAO reportDAO = sqlSession.getMapper(IReportListDAO.class);
		IMemberDAO skillCategoryDAO = sqlSession.getMapper(IMemberDAO.class);	// 스킬카테고리 select
		IMemberDAO skillsDAO = sqlSession.getMapper(IMemberDAO.class);			// 스킬 리스트
        
        model.addAttribute("scheduleList", scheduleDAO.scheduleList());
        model.addAttribute("assignmentList", assignmentDAO.assignmentList());
        model.addAttribute("assScheduleList", assignmentDAO.assScheduleList());
        model.addAttribute("assOutputList", assignmentDAO.assOutputList());
        model.addAttribute("reportList", reportDAO.reportList());
        model.addAttribute("reportOutputList", reportDAO.reportOutputList());
        model.addAttribute("reportPersonList", reportDAO.reportPersonList());
        
		model.addAttribute("skills", skillsDAO.skills());
		model.addAttribute("skillCategorys", skillCategoryDAO.skillCategorys());
		
		SkillProcessor skProcessors = new SkillProcessor();						// 스킬 리스트 조회 및 처리
		model.addAttribute("skProcessors", skProcessors.createSkillMapping());
        
        return "/Content/MeetGroup/WorkManage.jsp";
    }
}
