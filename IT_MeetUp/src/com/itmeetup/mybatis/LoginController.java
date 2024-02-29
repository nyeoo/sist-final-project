/* ========================
	LoginController.java
===========================*/
package com.itmeetup.mybatis;

//import org.apache.ibatis.session.SqlSession;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController
{
	// 주요 속성 구성
	// mybatis 객체 의존성(자동) 주입
	// @Autowired
	// private SqlSession sqlSession;

	// 로그인 폼F

	@RequestMapping(value="/login.action", method=RequestMethod.GET) public
	  String loinForm(Model model) { model.addAttribute(
	  "message","Hello Spring annotation + MVC  + mybatis Framework");
	  
	  //return "/WEB-INF/view/Hello.jsp"; 
	  return "/Content/Site/Login.jsp"; 
	 }
	 
	
	/*
	 * @RequestMapping(value="/login.action", method=RequestMethod.GET) public
	 * String hello(Model model) { model.addAttribute(
	 * "message","Hello Spring annotation + MVC  + mybatis Framework");
	 * 
	 * return "/WEB-INF/view/Hello.jsp"; }
	 */
}
