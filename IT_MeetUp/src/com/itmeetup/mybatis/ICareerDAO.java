/*======================
 	ICareerDAO.java
 	- 인터페이스
======================*/

package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface ICareerDAO
{
	// 경력 리스트를 가져오는 메소드
	public ArrayList<CareerDTO> careerList(String memCode);
	
	// 총 경력을 가져오는 메소드
	public CareerDTO totalCareer(String memCode);
	
	// 프로젝트 횟수 메소드
	public int count(String memCode);
	
	// 회원 레벨 메소드
	public String level(String memCode);
	
}
