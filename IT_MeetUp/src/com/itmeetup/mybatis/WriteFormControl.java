package com.itmeetup.mybatis;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WriteFormControl
{
	// 주요 속성 구성
	@Autowired
	private SqlSession sqlSession;
	
	
	// 모집 공고작성 페이지로 이동 
	@RequestMapping(value = "/WriteFormControl.action" , method = RequestMethod.GET)
	public String WriteFormList(ModelMap model)
	{
		String result = null;
		
		IOpenProjectDAO dao = sqlSession.getMapper(IOpenProjectDAO.class);
		IJobDAO jdao = sqlSession.getMapper(IJobDAO.class);
		IMemberDAO skillCategoryDAO = sqlSession.getMapper(IMemberDAO.class);	// 스킬카테고리 select
		IMemberDAO skillsDAO = sqlSession.getMapper(IMemberDAO.class);			// 스킬 리스트

		model.addAttribute("cateList",dao.cateList());							// 카테고리 뽑기	
		model.addAttribute("sidoList",dao.sidoList());							// 시군구 뽑기
		model.addAttribute("siggList",dao.siggList());							// 시군구 뽑기
		model.addAttribute("carList",dao.carList());							// 경력 코드
		model.addAttribute("jobs",jdao.jobs());									// 직무 뽑기
		model.addAttribute("skillCategorys", skillCategoryDAO.skillCategorys());
		model.addAttribute("lastCode",dao.lastCode());							// 가장 최근 프로젝트 개설 코드 뽑기
		model.addAttribute("skills", skillsDAO.skills());
		
		SkillProcessor skProcessors = new SkillProcessor();						// 스킬 리스트 조회 및 처리
		model.addAttribute("skProcessors", skProcessors.createSkillMapping());
		
		
		
		result = "/Content/ProjectLounge/WritePost.jsp";
		
		return result; 
	}
	
	
	
	
	// 프로젝트  입력 쿼리문 실행 
	@RequestMapping(value = "/opProjectInsertController.action" , method = RequestMethod.GET)
	public String InertOpProject (WriteFormDTO dto )
	{
		
		 String result = null;
		 IWriteFormDAO dao = sqlSession.getMapper(IWriteFormDAO.class);
		 List<String> hopeskills = dto.getHopeskills();
		 
		 String lastCode = dto.getLastCode();
		 
		 if(lastCode=="")
		 {
			 lastCode="OP_1";
			 System.out.println("hmm");
		 }
		 else
		 {
			String numcode= lastCode.substring(3);
			String Stringcode= lastCode.substring(0,3);
				
			System.out.println("숫자만 뽑아 :"+numcode);
			System.out.println("문자만 뽑아 :"+Stringcode);
			
			int numbercode= Integer.parseInt(numcode);
			System.out.println("정수형으로 변환 :" +numbercode);
			numbercode= numbercode+1;
			System.out.println("+1 한 결과"+numbercode);
			Integer.toString(numbercode);
			lastCode = Stringcode+numbercode;
			System.out.println("최종본"+lastCode);
			
		 }
		 // 테스트
//		 for(String code : hopeskills)
//		 {
//			 System.out.println(code);
//		 }
//		 
		 
		 
		 
		  // 프로젝트 정보 입력 쿼리
		  //dao.addProject(dto);		
		  // 프로젝트 상세일정, 역할별 인원수 입력
		  dao.addperiod(dto);
		  System.out.println("스킬뺴고 다 입력 성공~");
		  
		  System.out.println("스킬 입력 전");
		  // 프로젝트 희망 기술 입력
		  dao.addSkill(hopeskills,lastCode);
		  
		  System.out.println("스킬 입력 후");
		  	
		  //result = "/Content/ProjectLounge/PostList_ju.jsp";
		 // result = "redirect:/projectList.action";
		  result = "redirect:/PostDetail.action?code="+lastCode;
		  
		  return result;
		 
	}
	

}
