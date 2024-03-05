package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface IOpenProjectDAO
{
	// 프로젝트 카테고리 출력
	public ArrayList<String> cateList();
	
	// 시군구 출력 
	public ArrayList<String> sidoList();
	public ArrayList<String> siggList();
	
	// 커리어 출력
	public ArrayList<String> carList();
	
	// 프로젝트의 해당하는 희망 기술 뽑기
	public ArrayList<String> skillList(String code);
	
	// 현재 생성된 프로젝트 출력
	public ArrayList<OpenProjectDTO> openList();
	
	// 사용자가 누른  프로젝트 출력
	public OpenProjectDTO choiceProList(String code);

	
	
}
