package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AssignmentController {

    @Autowired
    private SqlSession sqlSession;

    @RequestMapping(value = "/workAssignment.action", method = RequestMethod.GET)
    public String workAssignmentList(ModelMap model)
    {
        IAssignmentListDAO dao = sqlSession.getMapper(IAssignmentListDAO.class);
        model.addAttribute("assignmentList", dao.assignmentList()); // ssName 데이터를 모델에 추가
        return "/Content/MeetGroup/WorkAssignment.jsp";
    }
}