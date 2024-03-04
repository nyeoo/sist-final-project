package com.itmeetup.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ScheduleController {

    @Autowired
    private SqlSession sqlSession;

    @RequestMapping(value = "/scheduleList.action", method = RequestMethod.GET)
    public String scheduleList(ModelMap model)
    {
        // IScheduleDAO 인터페이스를 통해 매퍼 객체를 가져옴
        IScheduleDAO dao = sqlSession.getMapper(IScheduleDAO.class);
        
        // 모델에 값을 추가
        model.addAttribute("scheduleList", dao.scheduleList()); // 일정 목록
        
        return "/Content/MeetGroup/ScheduleManage.jsp";
    }
}
