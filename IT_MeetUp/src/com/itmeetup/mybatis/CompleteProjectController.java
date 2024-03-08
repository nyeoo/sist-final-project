package com.itmeetup.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CompleteProjectController
{
    // 주요 속성 구성
    @Autowired
    private SqlSession sqlSession;
    
    @RequestMapping(value = "/completeproject.action", method = RequestMethod.GET)
    public String completeProject(@RequestParam(required = false) String pageNum,
                                  @RequestParam(required = false) String category,
                                  Model model) {

        // MyBatis Mapper 인터페이스를 이용하여 DAO 생성
        ICompleteProjectDAO dao = sqlSession.getMapper(ICompleteProjectDAO.class);
        
        //System.out.println("pageNum: " + pageNum);
        //System.out.println("selectedItems: " + category);
        
        PagingUtil pu = new PagingUtil();

        int currentPage = 1;
        if (pageNum != null && !pageNum.isEmpty()) {
            try {
                currentPage = Integer.parseInt(pageNum);
            } catch (NumberFormatException e) {
                // 숫자로 변환할 수 없는 경우에 대한 예외 처리
                e.printStackTrace(); // 또는 로그에 기록
            }
        }

		// 전체 데이터 갯수 구하기
		int dataCount = dao.getDataCount(category);
		

		// 전체 데이터를 기준으로 총 페이지 수 계산
		int numPerPage = 12; // -- 한 페이지에 표시할 데이터 갯수
		int totalPage = pu.getPageCount(numPerPage, dataCount);
		

		// 전체 페이지 수 보다 표시할 페이지가 큰 경우
		// 표시할 페이지를 전체 페이지로 처리 → 만약, 데이터를 삭제해서 페이지가 줄어들었을 경우...
		/*
		 * if (currentPage > totalPage) currentPage = totalPage;
		 */

		// 데이터베이스에서 가져올 시작과 끝 위치
		int start = (currentPage - 1) * numPerPage + 1;
		int end = currentPage * numPerPage;
		
		
		String listUrl = "/IT_MeetUp/completeproject.action?category=" + category;
	  
		String pageIndexList = pu.pageIndexList(currentPage, totalPage, listUrl);
	  
        
        // 모델에 데이터 추가
		model.addAttribute("cpList", dao.cpList(start, end, category));
        model.addAttribute("indexList", pageIndexList);
        model.addAttribute("catList", dao.catList());


        // CompleteProject.jsp로 이동
        return "/Content/ProjectLounge/CompleteProject.jsp";
    }
}
