package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WorkManageController {

    @Autowired
    private SqlSession sqlSession;

    @RequestMapping(value = "/workManage.action", method = RequestMethod.GET)
    public String workManage(ModelMap model)
    {
        IScheduleDAO scheduleDAO = sqlSession.getMapper(IScheduleDAO.class);
        IAssignmentListDAO assignmentDAO = sqlSession.getMapper(IAssignmentListDAO.class);
        IReportListDAO reportDAO = sqlSession.getMapper(IReportListDAO.class);
        
        model.addAttribute("scheduleList", scheduleDAO.scheduleList());
        model.addAttribute("assignmentList", assignmentDAO.assignmentList());
        model.addAttribute("reportList", reportDAO.reportList());
        model.addAttribute("reportOutputList", reportDAO.reportOutputList());
        model.addAttribute("reportPersonList", reportDAO.reportPersonList());
        
        return "/Content/MeetGroup/WorkManage.jsp";
    }
}
