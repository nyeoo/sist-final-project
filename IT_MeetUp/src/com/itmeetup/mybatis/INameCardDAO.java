package com.itmeetup.mybatis;

import java.util.ArrayList;

public interface INameCardDAO
{
	public NameCardDTO getNameCard(String memCode);						// 네임카드 리스트 조회
	public ArrayList<NameCardDTO> skillList(String memCode);			// 스킬 리스트 조회
	public ArrayList<NameCardDTO> projectList(String memCode);			// 완료 프로젝트 조회
	public ArrayList<String> sidoList();								// 시 / 도 리스트 
	public ArrayList<String> siggList();								// 군 / 구 리스트

}
