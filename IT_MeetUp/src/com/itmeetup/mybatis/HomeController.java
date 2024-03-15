package com.itmeetup.mybatis;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
  
    // 주요 속성 구성
    @Autowired
    private SqlSession sqlSession;

    @RequestMapping(value = "/home.action", method = RequestMethod.GET)
    public String home(Model model, HttpSession session) {

        // MyBatis Mapper 인터페이스를 이용하여 DAO 생성
        IHomeDAO dao = sqlSession.getMapper(IHomeDAO.class);
        IOpenProjectDAO oDao = sqlSession.getMapper(IOpenProjectDAO.class);
        
        MemberDTO member = (MemberDTO)session.getAttribute("loginDTO");

        // 개설요청코드를 key로, 스킬리스트를 value로 HashMap에 담기
        HashMap<String, ArrayList<String>> skillList = new HashMap<String, ArrayList<String>>();
        HashMap<String, ArrayList<JobDTO>> jobList = new HashMap<String, ArrayList<JobDTO>>();

        // POPULAR_VIEW에서 프로젝트 목록 조회
        ArrayList<OpenProjectDTO> project = dao.popList();
        for (OpenProjectDTO dto : project) {

            // 스킬 리스트 조회 및 처리
            ArrayList<String> processedSkills = SkillProcessor.processSkills(dao.skills(dto.getCode()));
            skillList.put(dto.getCode(), processedSkills);

            // 직무 리스트 조회
            ArrayList<JobDTO> jobs = dao.jobs(dto.getCode());
            jobList.put(dto.getCode(), jobs);
        }

        // 모델에 데이터 추가
        model.addAttribute("skillList", skillList);
        model.addAttribute("jobList", jobList);
        model.addAttribute("popList", project);
        model.addAttribute("newList", dao.newList());
        
        if (member!=null)
		{
        	model.addAttribute("wishList", oDao.wishList(member.getPiMemCode()));
		}
        

        // Home.jsp로 이동
        return "/Content/Home/Home.jsp";
    }
    
}